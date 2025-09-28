import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/authentication/presentation/pages/onboarding_screen.dart';
import '../features/authentication/presentation/pages/login_screen.dart';
import '../features/authentication/presentation/pages/register_screen.dart';
import '../features/content/presentation/pages/explore_screen.dart';
import '../features/content/presentation/pages/article_detail_screen.dart';
import '../features/community/presentation/pages/forum_list_screen.dart';
import '../features/community/presentation/pages/topic_detail_screen.dart';
import '../features/calculators/presentation/pages/calculator_list_screen.dart';
import '../features/calculators/presentation/pages/menstrual_calculator_screen.dart';
import '../features/calculators/presentation/pages/pregnancy_calculator_screen.dart';
import '../features/calculators/presentation/pages/bmi_calculator_screen.dart';
import '../features/profile_settings/presentation/pages/profile_screen.dart';
import '../features/profile_settings/presentation/pages/settings_screen.dart';
import '../features/support/presentation/pages/support_screen.dart';
import '../core/widgets/main_navigation_wrapper.dart';
import '../core/widgets/error_screen.dart';
import '../app_config/logger.dart';
import 'routes.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.onboarding,
    debugLogDiagnostics: true,
    routes: [
      // Authentication routes
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => const RegisterScreen(),
      ),

      // Main app shell with bottom navigation
      ShellRoute(
        builder: (context, state, child) {
          return MainNavigationWrapper(child: child);
        },
        routes: [
          // Explore/Home tab
          GoRoute(
            path: Routes.home,
            builder: (context, state) => const ExploreScreen(),
            routes: [
              GoRoute(
                path: 'article/:id',
                builder: (context, state) {
                  final articleId = state.pathParameters['id']!;
                  return ArticleDetailScreen(articleId: articleId);
                },
              ),
            ],
          ),

          // Community tab
          GoRoute(
            path: Routes.community,
            builder: (context, state) => const ForumListScreen(),
            routes: [
              GoRoute(
                path: 'topic/:topicId',
                builder: (context, state) {
                  final topicId = state.pathParameters['topicId']!;
                  return TopicDetailScreen(topicId: topicId);
                },
              ),
            ],
          ),

          // Calculators tab
          GoRoute(
            path: Routes.calculators,
            builder: (context, state) => const CalculatorListScreen(),
            routes: [
              GoRoute(
                path: 'menstrual',
                builder: (context, state) => const MenstrualCalculatorScreen(),
              ),
              GoRoute(
                path: 'pregnancy',
                builder: (context, state) => const PregnancyCalculatorScreen(),
              ),
              GoRoute(
                path: 'bmi',
                builder: (context, state) => const BmiCalculatorScreen(),
              ),
            ],
          ),

          // Profile tab
          GoRoute(
            path: Routes.profile,
            builder: (context, state) => const ProfileScreen(),
            routes: [
              GoRoute(
                path: 'settings',
                builder: (context, state) => const SettingsScreen(),
              ),
              GoRoute(
                path: 'support',
                builder: (context, state) => const SupportScreen(),
              ),
            ],
          ),
        ],
      ),
    ],

    // Error handling
    errorBuilder: (context, state) => ErrorScreen(
      error: state.error?.toString() ?? 'Sayfa bulunamadı',
    ),

    // Redirect logic (authentication, etc.)
    redirect: (context, state) {
      Logger.navigation('Current route', state.fullPath ?? 'unknown');

      // Add authentication logic here when implemented
      // For now, allow all routes
      return null;
    },
  );
});
