import 'package:dio/dio.dart';
import '../error/failures.dart';
import '../../app_config/logger.dart';
import '../../app_config/app_constants.dart';

class ApiClient {
  final Dio _dio;

  ApiClient([Dio? dio])
      : _dio = dio ??
            Dio(BaseOptions(
              connectTimeout: const Duration(seconds: 30),
              receiveTimeout: const Duration(seconds: 30),
              sendTimeout: const Duration(seconds: 30),
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
              },
            ));

  // WordPress API methods
  Future<Response> getWordpressData(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final url = '${AppConstants.wordpressApiBaseUrl}$endpoint';
      Logger.apiRequest('GET', url, queryParameters);

      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse('GET', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('WordPress API Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  // Forum API methods
  Future<Response> getForumData(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final url = '${AppConstants.forumApiBaseUrl}$endpoint';
      Logger.apiRequest('GET', url, queryParameters);

      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse('GET', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('Forum API Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  Future<Response> postForumData(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final url = '${AppConstants.forumApiBaseUrl}$endpoint';
      Logger.apiRequest(
          'POST',
          url,
          data is Map
              ? Map<String, dynamic>.from(data)
              : {'data': data?.toString()});

      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse('POST', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('Forum API POST Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  // Authentication methods
  Future<Response> login(String username, String password) async {
    try {
      final url = '${AppConstants.jwtAuthBaseUrl}/token';
      Logger.apiRequest('POST', url, {'username': username});

      final response = await _dio.post(
        url,
        data: {
          'username': username,
          'password': password,
        },
      );

      Logger.apiResponse('POST', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('Login Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  // Generic HTTP methods
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Logger.apiRequest('GET', url, queryParameters);

      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse('GET', url, response.statusCode ?? 0);
      return response;
    } on DioException catch (e) {
      Logger.e('GET Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  Future<Response> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Logger.apiRequest(
          'POST',
          url,
          data is Map
              ? Map<String, dynamic>.from(data)
              : {'data': data?.toString()});

      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse('POST', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('POST Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  Future<Response> put(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Logger.apiRequest(
          'PUT',
          url,
          data is Map
              ? Map<String, dynamic>.from(data)
              : {'data': data?.toString()});

      final response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse('PUT', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('PUT Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  Future<Response> delete(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Logger.apiRequest(
          'DELETE',
          url,
          data is Map
              ? Map<String, dynamic>.from(data)
              : {'data': data?.toString()});

      final response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      Logger.apiResponse(
          'DELETE', url, response.statusCode ?? 0, response.data);
      return response;
    } on DioException catch (e) {
      Logger.e('DELETE Error: ${e.message}', 'API_CLIENT', e);
      throw _handleDioError(e);
    }
  }

  // Error handling
  Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure(
            message: 'Bağlantı zaman aşımına uğradı. Lütfen tekrar deneyin.');

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message = _getErrorMessage(statusCode, error.response?.data);
        return ServerFailure(message: message, statusCode: statusCode);

      case DioExceptionType.cancel:
        return const NetworkFailure(message: 'İstek iptal edildi.');

      case DioExceptionType.connectionError:
        return const NetworkFailure(
            message: 'İnternet bağlantınızı kontrol edin.');

      case DioExceptionType.badCertificate:
        return const NetworkFailure(message: 'Güvenlik sertifikası hatası.');

      case DioExceptionType.unknown:
        return const NetworkFailure(
            message: 'Bilinmeyen bir hata oluştu. Lütfen tekrar deneyin.');
    }
  }

  String _getErrorMessage(int? statusCode, dynamic responseData) {
    // Try to extract error message from response
    String? message;

    if (responseData is Map<String, dynamic>) {
      message = responseData['message'] as String? ??
          responseData['error'] as String? ??
          responseData['detail'] as String?;
    }

    // Fallback to status code based messages
    return message ?? _getStatusCodeMessage(statusCode);
  }

  String _getStatusCodeMessage(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Geçersiz istek. Lütfen bilgileri kontrol edin.';
      case 401:
        return 'Yetkilendirme hatası. Lütfen tekrar giriş yapın.';
      case 403:
        return 'Bu işlemi gerçekleştirme yetkiniz bulunmuyor.';
      case 404:
        return 'İstenen kaynak bulunamadı.';
      case 409:
        return 'Bu işlem zaten gerçekleştirilmiş.';
      case 422:
        return 'Girdiğiniz bilgiler geçersiz.';
      case 429:
        return 'Çok fazla istek gönderdiniz. Lütfen bekleyip tekrar deneyin.';
      case 500:
        return 'Sunucu hatası. Lütfen daha sonra tekrar deneyin.';
      case 502:
      case 503:
      case 504:
        return 'Geçici sunucu hatası. Lütfen daha sonra tekrar deneyin.';
      default:
        return 'Bir hata oluştu. Lütfen tekrar deneyin.';
    }
  }
}
