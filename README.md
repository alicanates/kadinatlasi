# Kadın Atlası - Mobile Application

**Kadın Atlası** (Women's Atlas) is a privacy-first mobile content and community app designed specifically for women in Turkey. It provides reliable articles, guides, a supportive forum, and wellness calculators while prioritizing accessibility, cultural relevance, and user privacy.

## Project Overview

### Purpose
Deliver reliable, easy-to-consume guidance and a moderated peer community around women's health and lifestyle topics in Turkey.

### Key Features
- **Content Feed**: Curated articles on health, pregnancy, fitness, psychology, beauty, and astrology
- **Community Forum**: Safe, moderated discussions with privacy-first design
- **Wellness Calculators**: Menstrual cycle, pregnancy week, and BMI calculators with local storage
- **Pregnancy Guide**: Week-by-week educational content with optional notifications
- **Privacy Controls**: KVKK/GDPR compliant with explicit consent mechanisms

## Technology Stack

### Mobile Framework
- **Flutter 3.16+** with Dart
- **Riverpod** for state management
- **Go Router** for navigation
- **Drift/SQLite** for local storage
- **Flutter Secure Storage** for sensitive data

### Backend APIs
- **WordPress REST API** for content management
- **Custom Forum API** (Node.js adapter) for community features
- **JWT Authentication** for secure user sessions

### Key Dependencies
```yaml
dependencies:
  flutter_riverpod: ^2.4.10
  dio: ^5.4.0
  drift: ^2.14.1
  flutter_secure_storage: ^9.0.0
  go_router: ^13.2.0
  firebase_core: ^2.27.0
  firebase_messaging: ^14.7.19
  flutter_html: ^3.0.0-beta.2
```

## Project Structure

```
lib/
├── main.dart                    # Application entry point
├── app_config/                  # Configuration and dependency injection
│   ├── app_constants.dart
│   ├── logger.dart
│   └── injector.dart
├── core/                        # Cross-cutting concerns
│   ├── error/                   # Error handling and failures
│   ├── network/                 # API client and interceptors
│   ├── theme/                   # App theme and styling
│   ├── localization/            # Turkish localization
│   ├── utils/                   # Utility functions
│   └── widgets/                 # Reusable UI components
├── data/                        # Data layer
│   └── local/                   # Local storage and database
├── features/                    # Feature-driven modules
│   ├── authentication/          # User registration and login
│   ├── content/                 # Article browsing and reading
│   ├── community/               # Forum discussions
│   ├── calculators/             # Health calculators
│   ├── profile_settings/        # User profile and settings
│   └── support/                 # Help and support
└── router/                      # Navigation configuration
```

## Getting Started

### Prerequisites
- Flutter 3.16.0 or higher
- Dart 3.0.0 or higher
- Android SDK 21+ or iOS 12+

### Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd kadinatlasi
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Configure environment**
```bash
cp .env.local.example .env.local
# Edit .env.local with your API keys and configuration
```

4. **Run the application**
```bash
flutter run
```

### Environment Configuration

Update `.env.local` with your configuration:

```bash
# API Configuration
WORDPRESS_API_BASE_URL=https://kadinatlasi.com/wp-json/wp/v2
FORUM_API_BASE_URL=https://kadinatlasi.com/api/forum/v1
JWT_AUTH_BASE_URL=https://kadinatlasi.com/wp-json/jwt-auth/v1

# Firebase Configuration
FIREBASE_API_KEY=your_firebase_api_key_here
FIREBASE_PROJECT_ID=your_firebase_project_id_here

# Environment Settings
ENVIRONMENT=development
DEBUG_MODE=true
ENABLE_LOGGING=true
```

## Architecture

### Clean Architecture
The app follows Clean Architecture principles with clear separation of concerns:

- **Presentation Layer**: UI components and state management
- **Domain Layer**: Business logic and entities
- **Data Layer**: API clients and local storage

### State Management
Uses Riverpod for:
- Authentication state
- Content caching
- User preferences
- Network status
- Form validation

### Local Storage
- **SQLite (Drift)**: Content caching, user data, forum drafts
- **Secure Storage**: Authentication tokens, encrypted calculator results
- **Shared Preferences**: App settings and user preferences

## Key Features Implementation

### Privacy-First Design
- Local storage for sensitive health data
- Explicit consent for all data collection
- Pseudonymous forum participation
- KVKK/GDPR compliance built-in

### Offline Capabilities
- Cached articles available offline
- Draft forum posts saved locally
- Calculator results stored locally
- Queued actions sync when online

### Cultural Adaptation
- Turkish language support with proper diacritics
- Date formats (DD.MM.YYYY) and metric units
- Ramadan-aware notification scheduling
- Modest-friendly imagery and content

### Medical Disclaimers
All health-related content includes appropriate disclaimers:
- "Bu içerik bilgilendirme amaçlıdır; kişisel durumunuz için hekiminize danışın."
- Calculator results explicitly marked as educational, not medical advice

## Development Guidelines

### Code Style
- Follow Dart/Flutter conventions
- Use meaningful variable names
- Comprehensive error handling
- Extensive logging for debugging

### Testing
```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/
```

### Building for Production
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## Security Considerations

### Data Protection
- All sensitive data encrypted at rest
- JWT tokens stored in secure storage
- Network communication over HTTPS
- Rate limiting on API endpoints

### Content Moderation
- Multi-layer content filtering
- User reporting system
- Moderator queue for review
- Community guidelines enforcement

## Deployment

### Mobile App Stores
- **Google Play Store**: Android APK/AAB
- **Apple App Store**: iOS IPA

### Backend Requirements
- WordPress with REST API enabled
- JWT Authentication plugin
- Custom forum adapter service
- CDN for image delivery

## Contributing

### Code Generation
```bash
# Generate Drift database files
dart run build_runner build --delete-conflicting-outputs

# Generate Riverpod providers
dart run build_runner build
```

### Localization
- Primary language: Turkish (tr_TR)
- Fallback: English (en_US)
- All user-facing text must be localized

## License

This project is proprietary software for Kadın Atlası platform.

## Support

For technical support or questions:
- Create an issue in the repository
- Contact the development team
- Refer to the comprehensive documentation in `/doc`

## Roadmap

### Phase 1 (MVP - Current)
- Basic content browsing
- Forum functionality
- Calculator tools
- User authentication

### Phase 2 (Enhancement)
- Advanced calculator features
- Push notifications
- Pregnancy tracking
- Enhanced personalization

### Phase 3 (Scale)
- Multi-language support
- Advanced moderation tools
- Analytics integration
- Performance optimizations

---

**Note**: This application prioritizes user privacy and follows Turkish data protection laws (KVKK) and international standards (GDPR). All health-related content is for educational purposes only and should not replace professional medical advice.
