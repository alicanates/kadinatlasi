import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../app_config/app_constants.dart';
import '../../app_config/logger.dart';

abstract class SecureStorageService {
  Future<void> storeAuthToken(String token);
  Future<String?> getAuthToken();
  Future<void> storeRefreshToken(String token);
  Future<String?> getRefreshToken();
  Future<void> clearAuthTokens();
  
  Future<void> storeUserPreferences(Map<String, dynamic> preferences);
  Future<Map<String, dynamic>?> getUserPreferences();
  
  Future<void> storeEncryptedData(String key, String data);
  Future<String?> getEncryptedData(String key);
  Future<void> removeEncryptedData(String key);
  
  Future<void> storeConsentRecord(String type, bool granted, String version);
  Future<Map<String, dynamic>?> getConsentRecord(String type);
  
  Future<void> clearAllData();
}

class SecureStorageServiceImpl implements SecureStorageService {
  final FlutterSecureStorage _secureStorage;
  
  SecureStorageServiceImpl(this._secureStorage);
  
  @override
  Future<void> storeAuthToken(String token) async {
    try {
      await _secureStorage.write(
        key: AppConstants.keyAuthToken,
        value: token,
      );
      Logger.auth('Auth token stored');
    } catch (e) {
      Logger.e('Failed to store auth token: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<String?> getAuthToken() async {
    try {
      final token = await _secureStorage.read(key: AppConstants.keyAuthToken);
      if (token != null) {
        Logger.auth('Auth token retrieved');
      }
      return token;
    } catch (e) {
      Logger.e('Failed to get auth token: $e', 'SECURE_STORAGE');
      return null;
    }
  }
  
  @override
  Future<void> storeRefreshToken(String token) async {
    try {
      await _secureStorage.write(
        key: AppConstants.keyRefreshToken,
        value: token,
      );
      Logger.auth('Refresh token stored');
    } catch (e) {
      Logger.e('Failed to store refresh token: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<String?> getRefreshToken() async {
    try {
      final token = await _secureStorage.read(key: AppConstants.keyRefreshToken);
      if (token != null) {
        Logger.auth('Refresh token retrieved');
      }
      return token;
    } catch (e) {
      Logger.e('Failed to get refresh token: $e', 'SECURE_STORAGE');
      return null;
    }
  }
  
  @override
  Future<void> clearAuthTokens() async {
    try {
      await Future.wait([
        _secureStorage.delete(key: AppConstants.keyAuthToken),
        _secureStorage.delete(key: AppConstants.keyRefreshToken),
      ]);
      Logger.auth('Auth tokens cleared');
    } catch (e) {
      Logger.e('Failed to clear auth tokens: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<void> storeUserPreferences(Map<String, dynamic> preferences) async {
    try {
      final preferencesJson = preferences.toString(); // Simple serialization
      await _secureStorage.write(
        key: AppConstants.keyUserPreferences,
        value: preferencesJson,
      );
      Logger.d('User preferences stored', 'SECURE_STORAGE');
    } catch (e) {
      Logger.e('Failed to store user preferences: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<Map<String, dynamic>?> getUserPreferences() async {
    try {
      final preferencesJson = await _secureStorage.read(
        key: AppConstants.keyUserPreferences,
      );
      if (preferencesJson != null) {
        // In a real implementation, you'd use proper JSON serialization
        Logger.d('User preferences retrieved', 'SECURE_STORAGE');
        return {}; // Placeholder - implement proper JSON parsing
      }
      return null;
    } catch (e) {
      Logger.e('Failed to get user preferences: $e', 'SECURE_STORAGE');
      return null;
    }
  }
  
  @override
  Future<void> storeEncryptedData(String key, String data) async {
    try {
      await _secureStorage.write(key: key, value: data);
      Logger.d('Encrypted data stored for key: $key', 'SECURE_STORAGE');
    } catch (e) {
      Logger.e('Failed to store encrypted data for key $key: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<String?> getEncryptedData(String key) async {
    try {
      final data = await _secureStorage.read(key: key);
      if (data != null) {
        Logger.d('Encrypted data retrieved for key: $key', 'SECURE_STORAGE');
      }
      return data;
    } catch (e) {
      Logger.e('Failed to get encrypted data for key $key: $e', 'SECURE_STORAGE');
      return null;
    }
  }
  
  @override
  Future<void> removeEncryptedData(String key) async {
    try {
      await _secureStorage.delete(key: key);
      Logger.d('Encrypted data removed for key: $key', 'SECURE_STORAGE');
    } catch (e) {
      Logger.e('Failed to remove encrypted data for key $key: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<void> storeConsentRecord(String type, bool granted, String version) async {
    try {
      final record = {
        'granted': granted,
        'timestamp': DateTime.now().toIso8601String(),
        'version': version,
      };
      await _secureStorage.write(
        key: '${AppConstants.keyPrivacyConsents}_$type',
        value: record.toString(),
      );
      Logger.d('Consent record stored for type: $type', 'SECURE_STORAGE');
    } catch (e) {
      Logger.e('Failed to store consent record for $type: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
  
  @override
  Future<Map<String, dynamic>?> getConsentRecord(String type) async {
    try {
      final recordString = await _secureStorage.read(
        key: '${AppConstants.keyPrivacyConsents}_$type',
      );
      if (recordString != null) {
        Logger.d('Consent record retrieved for type: $type', 'SECURE_STORAGE');
        // In a real implementation, use proper JSON parsing
        return {}; // Placeholder
      }
      return null;
    } catch (e) {
      Logger.e('Failed to get consent record for $type: $e', 'SECURE_STORAGE');
      return null;
    }
  }
  
  @override
  Future<void> clearAllData() async {
    try {
      await _secureStorage.deleteAll();
      Logger.w('All secure storage data cleared', 'SECURE_STORAGE');
    } catch (e) {
      Logger.e('Failed to clear all secure storage data: $e', 'SECURE_STORAGE');
      rethrow;
    }
  }
}
