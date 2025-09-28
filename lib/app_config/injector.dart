import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../core/network/api_client.dart';
import '../core/network/network_info.dart';
import '../core/network/custom_interceptor.dart';
import '../data/local/app_database.dart';
import '../data/local/secure_storage_service.dart';
import 'logger.dart';

// Core Network Dependencies
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.options = BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  );

  // Add interceptors
  dio.interceptors.addAll([
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (obj) => Logger.d(obj.toString(), 'DIO'),
    ),
    ref.read(customInterceptorProvider),
  ]);

  return dio;
});

final customInterceptorProvider = Provider<CustomInterceptor>((ref) {
  return CustomInterceptor(ref);
});

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(ref.read(dioProvider));
});

final networkInfoProvider = Provider<NetworkInfo>((ref) {
  return NetworkInfoImpl();
});

// Local Storage Dependencies
final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );
});

final secureStorageServiceProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageServiceImpl(ref.read(secureStorageProvider));
});

// Database Dependencies
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

Future<void> setupDependencies() async {
  Logger.i('Setting up dependencies...');

  try {
    // Ensure app documents directory exists
    final appDocDir = await getApplicationDocumentsDirectory();
    Logger.i('App documents directory: ${appDocDir.path}');

    // Initialize secure storage
    const secureStorage = FlutterSecureStorage();

    // Test secure storage (handle any initialization issues)
    try {
      await secureStorage.read(key: 'test_key');
      Logger.i('Secure storage initialized successfully');
    } catch (e) {
      Logger.w('Secure storage test failed: $e');
    }

    Logger.i('Dependencies setup completed successfully');
  } catch (e, stackTrace) {
    Logger.e('Failed to setup dependencies', 'INJECTOR', e, stackTrace);
    rethrow;
  }
}
