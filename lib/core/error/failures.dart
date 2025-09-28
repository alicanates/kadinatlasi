import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    this.code,
  });

  final String message;
  final String? code;
  
  @override
  List<Object?> get props => [message, code];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    this.statusCode,
    super.code,
  });
  
  final int? statusCode;
  
  @override
  List<Object?> get props => [message, code, statusCode];
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    required super.message,
    super.code,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({
    required super.message,
    super.code,
  });
}

class ValidationFailure extends Failure {
  const ValidationFailure({
    required super.message,
    this.fieldErrors,
    super.code,
  });
  
  final Map<String, String>? fieldErrors;
  
  @override
  List<Object?> get props => [message, code, fieldErrors];
}

// Authentication failures
class AuthenticationFailure extends Failure {
  const AuthenticationFailure({
    required super.message,
    super.code,
  });
}

class AuthorizationFailure extends Failure {
  const AuthorizationFailure({
    required super.message,
    super.code,
  });
}

class TokenExpiredFailure extends Failure {
  const TokenExpiredFailure({
    required super.message,
    super.code,
  });
}

// Content failures
class ContentNotFoundFailure extends Failure {
  const ContentNotFoundFailure({
    required super.message,
    super.code,
  });
}

class ContentUnavailableFailure extends Failure {
  const ContentUnavailableFailure({
    required super.message,
    super.code,
  });
}

// Forum failures
class ForumAccessDeniedFailure extends Failure {
  const ForumAccessDeniedFailure({
    required super.message,
    super.code,
  });
}

class RateLimitFailure extends Failure {
  const RateLimitFailure({
    required super.message,
    this.retryAfterSeconds,
    super.code,
  });
  
  final int? retryAfterSeconds;
  
  @override
  List<Object?> get props => [message, code, retryAfterSeconds];
}

class ModerationFailure extends Failure {
  const ModerationFailure({
    required super.message,
    super.code,
  });
}

// Calculator failures
class CalculatorInputFailure extends Failure {
  const CalculatorInputFailure({
    required super.message,
    super.code,
  });
}

// Storage failures
class StorageFailure extends Failure {
  const StorageFailure({
    required super.message,
    super.code,
  });
}

class EncryptionFailure extends Failure {
  const EncryptionFailure({
    required super.message,
    super.code,
  });
}

// Permission failures
class PermissionFailure extends Failure {
  const PermissionFailure({
    required super.message,
    super.code,
  });
}

// Unknown failure
class UnknownFailure extends Failure {
  const UnknownFailure({
    required super.message,
    super.code,
  });
}

// Extension for common failure messages in Turkish
extension FailureMessages on Failure {
  String get userFriendlyMessage {
    switch (runtimeType) {
      case NetworkFailure _:
        return 'İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
      case ServerFailure _:
        return 'Sunucu hatası oluştu. Lütfen daha sonra tekrar deneyin.';
      case AuthenticationFailure _:
        return 'Giriş bilgileriniz hatalı. Lütfen kontrol edin.';
      case AuthorizationFailure _:
        return 'Bu işlem için yetkiniz bulunmuyor.';
      case TokenExpiredFailure _:
        return 'Oturumunuzun süresi dolmuş. Lütfen tekrar giriş yapın.';
      case ContentNotFoundFailure _:
        return 'İstenen içerik bulunamadı.';
      case RateLimitFailure _:
        return 'Çok fazla istek gönderdiniz. Lütfen bekleyip tekrar deneyin.';
      case ValidationFailure _:
        return 'Girdiğiniz bilgiler geçersiz. Lütfen kontrol edin.';
      case StorageFailure _:
        return 'Veri kaydedilirken bir hata oluştu.';
      case PermissionFailure _:
        return 'Bu işlem için gerekli izin verilmemiş.';
      default:
        return message;
    }
  }
}
