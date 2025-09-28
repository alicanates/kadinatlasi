import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum LogLevel {
  debug,
  info,
  warning,
  error,
}

class Logger {
  static bool _isInitialized = false;
  static bool _enableLogging = true; // Default to true during development

  static bool get enableLogging => _enableLogging;

  static void init() {
    _isInitialized = true;
    try {
      _enableLogging = dotenv.env['ENABLE_LOGGING'] == 'true';
    } catch (e) {
      // If dotenv is not initialized, keep default value
      _enableLogging = true;
    }
    if (enableLogging) {
      i('Logger initialized');
    }
  }

  static void updateFromDotEnv() {
    try {
      _enableLogging = dotenv.env['ENABLE_LOGGING'] == 'true';
      if (_enableLogging) {
        i('Logger configuration updated from environment');
      }
    } catch (e) {
      // Keep current setting if dotenv is not available
    }
  }

  static void d(String message, [String? tag]) {
    if (_isInitialized && enableLogging && kDebugMode) {
      _log(LogLevel.debug, message, tag);
    }
  }

  static void i(String message, [String? tag]) {
    if (_isInitialized && enableLogging) {
      _log(LogLevel.info, message, tag);
    }
  }

  static void w(String message, [String? tag]) {
    if (_isInitialized && enableLogging) {
      _log(LogLevel.warning, message, tag);
    }
  }

  static void e(String message,
      [String? tag, Object? error, StackTrace? stackTrace]) {
    if (_isInitialized && enableLogging) {
      _log(LogLevel.error, message, tag, error, stackTrace);
    }
  }

  static void _log(
    LogLevel level,
    String message,
    String? tag, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    final timestamp = DateTime.now().toIso8601String();
    final levelStr = level.name.toUpperCase();
    final tagStr = tag != null ? '[$tag] ' : '';
    final formattedMessage = '$timestamp $levelStr: $tagStr$message';

    switch (level) {
      case LogLevel.debug:
        developer.log(formattedMessage, name: 'KadinAtlasi.DEBUG');
        break;
      case LogLevel.info:
        developer.log(formattedMessage, name: 'KadinAtlasi.INFO');
        break;
      case LogLevel.warning:
        developer.log(formattedMessage, name: 'KadinAtlasi.WARNING');
        break;
      case LogLevel.error:
        developer.log(
          formattedMessage,
          name: 'KadinAtlasi.ERROR',
          error: error,
          stackTrace: stackTrace,
        );
        break;
    }
  }

  /// Log API requests
  static void apiRequest(String method, String url,
      [Map<String, dynamic>? data]) {
    if (!enableLogging) return;

    final message = 'API Request: $method $url';
    if (data != null && data.isNotEmpty) {
      d('$message\nData: $data', 'API');
    } else {
      d(message, 'API');
    }
  }

  /// Log API responses
  static void apiResponse(String method, String url, int statusCode,
      [dynamic data]) {
    if (!enableLogging) return;

    final message = 'API Response: $method $url - Status: $statusCode';
    if (statusCode >= 400) {
      e('$message\nError: $data', 'API');
    } else {
      d(message, 'API');
    }
  }

  /// Log navigation events
  static void navigation(String from, String to) {
    if (!enableLogging) return;
    d('Navigation: $from -> $to', 'NAVIGATION');
  }

  /// Log user actions
  static void userAction(String action, [Map<String, dynamic>? context]) {
    if (!enableLogging) return;

    final message = 'User Action: $action';
    if (context != null && context.isNotEmpty) {
      d('$message\nContext: $context', 'USER_ACTION');
    } else {
      d(message, 'USER_ACTION');
    }
  }

  /// Log database operations
  static void database(String operation, String table,
      [Map<String, dynamic>? data]) {
    if (!enableLogging) return;

    final message = 'Database: $operation on $table';
    if (data != null && data.isNotEmpty) {
      d('$message\nData: $data', 'DATABASE');
    } else {
      d(message, 'DATABASE');
    }
  }

  /// Log cache operations
  static void cache(String operation, String key, [dynamic data]) {
    if (!enableLogging) return;

    final message = 'Cache: $operation for $key';
    d(message, 'CACHE');
  }

  /// Log authentication events
  static void auth(String event, [String? userId]) {
    if (!enableLogging) return;

    final message =
        userId != null ? 'Auth: $event for user $userId' : 'Auth: $event';
    i(message, 'AUTH');
  }

  /// Log business logic events
  static void business(String event, [Map<String, dynamic>? context]) {
    if (!enableLogging) return;

    final message = 'Business: $event';
    if (context != null && context.isNotEmpty) {
      i('$message\nContext: $context', 'BUSINESS');
    } else {
      i(message, 'BUSINESS');
    }
  }

  /// Log performance metrics
  static void performance(String metric, Duration duration,
      [Map<String, dynamic>? context]) {
    if (!enableLogging) return;

    final message = 'Performance: $metric took ${duration.inMilliseconds}ms';
    if (context != null && context.isNotEmpty) {
      i('$message\nContext: $context', 'PERFORMANCE');
    } else {
      i(message, 'PERFORMANCE');
    }
  }
}
