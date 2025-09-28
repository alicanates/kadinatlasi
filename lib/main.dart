import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'core/theme/app_theme.dart';
import 'core/localization/app_localizations.dart';
import 'router/app_router.dart';
import 'app_config/logger.dart';
import 'app_config/injector.dart';

void main() async {
  // Ensure Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initialize logger
    Logger.init();
    Logger.i('Starting Kadın Atlası app...');

    // Load environment variables
    try {
      await dotenv.load(fileName: '.env.local');
      Logger.i('Environment variables loaded successfully');
      // Update logger configuration from environment
      Logger.updateFromDotEnv();
    } catch (e) {
      Logger.w('Failed to load .env.local file, using default values: $e');
      // Continue without env file - app will use default values
    }

    // Setup dependencies
    await setupDependencies();

    // Run the app
    runApp(
      const ProviderScope(
        child: KadinAtlasiApp(),
      ),
    );
  } catch (error, stackTrace) {
    Logger.e('Failed to start app', 'MAIN', error, stackTrace);

    // Still try to run the app with minimal setup
    runApp(
      const ProviderScope(
        child: KadinAtlasiApp(),
      ),
    );
  }
}

class KadinAtlasiApp extends ConsumerWidget {
  const KadinAtlasiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Kadın Atlası',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      // Localization
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('tr', 'TR'),
        Locale('en', 'US'),
      ],
      locale: const Locale('tr', 'TR'),

      // Router
      routerConfig: router,
    );
  }
}
