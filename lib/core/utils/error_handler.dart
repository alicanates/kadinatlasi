import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../../app_config/logger.dart';
import '../error/failures.dart';

class ErrorHandler {
  /// Build error widget for Flutter error details
  static Widget buildErrorWidget(FlutterErrorDetails details) {
    Logger.e(
      'Flutter Error: ${details.exception}',
      'ERROR_HANDLER',
      details.exception,
      details.stack,
    );

    if (kDebugMode) {
      return ErrorWidget(details.exception);
    }

    return const Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 48,
              ),
              SizedBox(height: 16),
              Text(
                'Bir hata oluştu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'Uygulamayı yeniden başlatmayı deneyin.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Get user-friendly error message from failure
  static String getErrorMessage(Failure failure) {
    Logger.w('Handling failure: ${failure.runtimeType} - ${failure.message}', 'ERROR_HANDLER');
    return failure.userFriendlyMessage;
  }

  /// Get user-friendly error message from exception
  static String getExceptionMessage(Object exception) {
    Logger.w('Handling exception: ${exception.runtimeType} - $exception', 'ERROR_HANDLER');
    
    if (exception is Failure) {
      return getErrorMessage(exception);
    }
    
    // Handle common exceptions
    if (exception.toString().contains('SocketException')) {
      return 'İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
    }
    
    if (exception.toString().contains('TimeoutException')) {
      return 'İşlem zaman aşımına uğradı. Lütfen tekrar deneyin.';
    }
    
    if (exception.toString().contains('FormatException')) {
      return 'Veri formatı hatası oluştu.';
    }
    
    // Generic message for unknown errors
    return 'Beklenmeyen bir hata oluştu. Lütfen tekrar deneyin.';
  }

  /// Show error snackbar
  static void showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'Tamam',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Show success snackbar
  static void showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Show warning snackbar
  static void showWarningSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.orange,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Show info snackbar
  static void showInfoSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.blue,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Handle error and show appropriate message
  static void handleError(BuildContext context, Object error) {
    final message = getExceptionMessage(error);
    showErrorSnackBar(context, message);
  }

  /// Show error dialog
  static Future<void> showErrorDialog({
    required BuildContext context,
    required String title,
    required String message,
    String? actionText,
    VoidCallback? onAction,
  }) {
    return showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Tamam'),
          ),
          if (actionText != null && onAction != null)
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onAction();
              },
              child: Text(actionText),
            ),
        ],
      ),
    );
  }

  /// Show confirmation dialog
  static Future<bool?> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String message,
    String confirmText = 'Evet',
    String cancelText = 'Hayır',
  }) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }
}
