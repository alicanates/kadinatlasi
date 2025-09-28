import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  // API Configuration
  static String get wordpressApiBaseUrl {
    try {
      return dotenv.env['WORDPRESS_API_BASE_URL'] ??
          'https://kadinatlasi.com/wp-json/wp/v2';
    } catch (e) {
      return 'https://kadinatlasi.com/wp-json/wp/v2';
    }
  }

  static String get forumApiBaseUrl {
    try {
      return dotenv.env['FORUM_API_BASE_URL'] ??
          'https://kadinatlasi.com/api/forum/v1';
    } catch (e) {
      return 'https://kadinatlasi.com/api/forum/v1';
    }
  }

  static String get jwtAuthBaseUrl {
    try {
      return dotenv.env['JWT_AUTH_BASE_URL'] ??
          'https://kadinatlasi.com/wp-json/jwt-auth/v1';
    } catch (e) {
      return 'https://kadinatlasi.com/wp-json/jwt-auth/v1';
    }
  }

  // Environment
  static String get environment {
    try {
      return dotenv.env['ENVIRONMENT'] ?? 'development';
    } catch (e) {
      return 'development';
    }
  }

  static bool get isDebugMode {
    try {
      return dotenv.env['DEBUG_MODE'] == 'true';
    } catch (e) {
      return true;
    }
  }

  static bool get enableLogging {
    try {
      return dotenv.env['ENABLE_LOGGING'] == 'true';
    } catch (e) {
      return true;
    }
  }

  // API Settings
  static int get apiTimeoutSeconds {
    try {
      return int.tryParse(dotenv.env['API_TIMEOUT_SECONDS'] ?? '') ?? 30;
    } catch (e) {
      return 30;
    }
  }

  static int get maxCacheSizeMB {
    try {
      return int.tryParse(dotenv.env['MAX_CACHE_SIZE_MB'] ?? '') ?? 250;
    } catch (e) {
      return 250;
    }
  }

  static int get offlineCacheTTLHours {
    try {
      return int.tryParse(dotenv.env['OFFLINE_CACHE_TTL_HOURS'] ?? '') ?? 24;
    } catch (e) {
      return 24;
    }
  }

  // Feature Flags
  static bool get enableForum {
    try {
      return dotenv.env['ENABLE_FORUM'] == 'true';
    } catch (e) {
      return true;
    }
  }

  static bool get enableCalculators {
    try {
      return dotenv.env['ENABLE_CALCULATORS'] == 'true';
    } catch (e) {
      return true;
    }
  }

  static bool get enablePregnancyGuide {
    try {
      return dotenv.env['ENABLE_PREGNANCY_GUIDE'] == 'true';
    } catch (e) {
      return true;
    }
  }

  static bool get enableAstrology {
    try {
      return dotenv.env['ENABLE_ASTROLOGY'] == 'true';
    } catch (e) {
      return true;
    }
  }

  static bool get enableNotifications {
    try {
      return dotenv.env['ENABLE_NOTIFICATIONS'] == 'true';
    } catch (e) {
      return true;
    }
  }

  // UI Constants
  static const double minTouchTargetSize = 44.0;
  static const double borderRadius = 12.0;
  static const double cardElevation = 2.0;
  static const double spacing = 16.0;
  static const double smallSpacing = 8.0;
  static const double largeSpacing = 24.0;

  // Animation Durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 200);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 300);
  static const Duration longAnimationDuration = Duration(milliseconds: 500);

  // Database
  static const String databaseName = 'kadin_atlasi.db';
  static const int databaseVersion = 1;

  // Local Storage Keys
  static const String keyFirstLaunch = 'first_launch';
  static const String keyOnboardingCompleted = 'onboarding_completed';
  static const String keyUserPreferences = 'user_preferences';
  static const String keyAuthToken = 'auth_token';
  static const String keyRefreshToken = 'refresh_token';
  static const String keySelectedInterests = 'selected_interests';
  static const String keyNotificationSettings = 'notification_settings';
  static const String keyPrivacyConsents = 'privacy_consents';

  // Rate Limiting
  static const int maxTopicsPerMinute = 10;
  static const int maxPostsPerMinute = 30;
  static const int maxReportsPerMinute = 10;
  static const int maxLikesPerMinute = 30;

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Content Limits
  static const int maxTopicTitleLength = 200;
  static const int maxPostContentLength = 10000;
  static const int maxProfileBioLength = 500;
  static const int maxCalculatorHistoryItems = 100;
  static const int maxSearchHistoryItems = 50;

  // Turkish Locale Settings
  static const String turkishLocale = 'tr_TR';
  static const String dateFormat = 'dd.MM.yyyy';
  static const String timeFormat = 'HH:mm';
  static const String dateTimeFormat = 'dd.MM.yyyy HH:mm';

  // Notification Settings
  static const String defaultNotificationStartTime = '09:00';
  static const String defaultNotificationEndTime = '21:00';
  static const Duration notificationCooldown = Duration(hours: 1);

  // Medical Disclaimers
  static const String generalMedicalDisclaimer =
      'Bu içerik bilgilendirme amaçlıdır; kişisel durumunuz için hekiminize danışın.';
  static const String calculatorDisclaimer =
      'Bu hesaplama aracı eğitim amaçlıdır ve tıbbi tavsiye değildir. Kişisel sağlık durumunuz için mutlaka hekiminize danışın.';
  static const String pregnancyDisclaimer =
      'Bu tahminler genel klinik kurallara dayanır. Resmi doğum tarihiniz sadece hekiminiz tarafından belirlenebilir.';
}
