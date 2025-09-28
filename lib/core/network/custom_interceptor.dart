import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app_config/logger.dart';
import '../../app_config/app_constants.dart';
import '../../app_config/injector.dart';

class CustomInterceptor extends Interceptor {
  final Ref _ref;

  CustomInterceptor(this._ref);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Add authentication token if available
    try {
      final secureStorage = _ref.read(secureStorageServiceProvider);
      final token = await secureStorage.getAuthToken();

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
        Logger.d('Added auth token to request', 'INTERCEPTOR');
      }
    } catch (e) {
      Logger.w('Failed to add auth token: $e', 'INTERCEPTOR');
    }

    // Add request tracking
    options.extra['request_start_time'] = DateTime.now();

    // Add Turkish locale headers
    options.headers['Accept-Language'] = 'tr-TR,tr;q=0.9,en;q=0.8';

    // Add user agent
    options.headers['User-Agent'] = 'KadinAtlasi/1.0.0 (Mobile App)';

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Track response time
    final startTime =
        response.requestOptions.extra['request_start_time'] as DateTime?;
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      Logger.performance(
        'API Request',
        duration,
        {
          'url': response.requestOptions.uri.toString(),
          'method': response.requestOptions.method,
          'status_code': response.statusCode,
        },
      );
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    Logger.e(
      'API Error: ${err.message}',
      'INTERCEPTOR',
      err,
      err.stackTrace,
    );

    // Handle 401 errors (token expired)
    if (err.response?.statusCode == 401) {
      Logger.w('Received 401, attempting token refresh', 'INTERCEPTOR');

      try {
        final secureStorage = _ref.read(secureStorageServiceProvider);
        final refreshToken = await secureStorage.getRefreshToken();

        if (refreshToken != null && refreshToken.isNotEmpty) {
          // Attempt to refresh token
          final success = await _refreshToken(refreshToken);

          if (success) {
            // Retry the original request
            final newToken = await secureStorage.getAuthToken();
            if (newToken != null) {
              err.requestOptions.headers['Authorization'] = 'Bearer $newToken';

              final dio = Dio();
              final response = await dio.fetch(err.requestOptions);
              handler.resolve(response);
              return;
            }
          }
        }

        // If refresh failed, clear tokens and redirect to login
        await secureStorage.clearAuthTokens();
        Logger.auth('Token refresh failed, cleared tokens');
      } catch (e) {
        Logger.e('Token refresh error: $e', 'INTERCEPTOR');
        await _ref.read(secureStorageServiceProvider).clearAuthTokens();
      }
    }

    // Handle rate limiting (429)
    if (err.response?.statusCode == 429) {
      final retryAfter = err.response?.headers.value('retry-after');
      Logger.w('Rate limited. Retry after: $retryAfter seconds', 'INTERCEPTOR');

      // You might want to implement automatic retry with delay here
      // For now, just pass the error through
    }

    super.onError(err, handler);
  }

  Future<bool> _refreshToken(String refreshToken) async {
    try {
      final dio = Dio();
      final response = await dio.post(
        '${AppConstants.jwtAuthBaseUrl}/token/refresh',
        data: {'refresh_token': refreshToken},
      );

      if (response.statusCode == 200 && response.data is Map) {
        final data = response.data as Map<String, dynamic>;
        final newToken = data['token'] as String?;
        final newRefreshToken = data['refresh_token'] as String?;

        if (newToken != null) {
          final secureStorage = _ref.read(secureStorageServiceProvider);
          await secureStorage.storeAuthToken(newToken);

          if (newRefreshToken != null) {
            await secureStorage.storeRefreshToken(newRefreshToken);
          }

          Logger.auth('Token refreshed successfully');
          return true;
        }
      }

      return false;
    } catch (e) {
      Logger.e('Token refresh failed: $e', 'INTERCEPTOR');
      return false;
    }
  }
}
