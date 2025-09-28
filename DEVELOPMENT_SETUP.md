# Development Setup Guide - Kadın Atlası

## Prerequisites

### Required Software
- **Flutter SDK**: 3.16.0 or higher
- **Dart SDK**: 3.0.0 or higher (included with Flutter)
- **Android Studio**: Latest stable version
- **Xcode**: 15.0+ (for iOS development, macOS only)
- **VS Code**: With Flutter and Dart extensions (recommended)

### Platform Requirements
- **Android**: SDK 21+ (Android 5.0)
- **iOS**: iOS 12.0+
- **Development OS**: Windows, macOS, or Linux

## Initial Setup

### 1. Flutter Installation
```bash
# Verify Flutter installation
flutter doctor

# Expected output should show no critical issues
```

### 2. Project Setup
```bash
# Navigate to project directory
cd kadinatlasi

# Get dependencies
flutter pub get

# Run code generation
dart run build_runner build --delete-conflicting-outputs
```

### 3. Environment Configuration
```bash
# Copy environment template
cp .env.local .env.local

# Edit configuration file
# Update API URLs, Firebase keys, and feature flags
```

### 4. Database Generation
```bash
# Generate database files (if using Drift)
dart run build_runner build

# This creates app_database.g.dart and related files
```

## Development Workflow

### Running the App
```bash
# Debug mode
flutter run

# Release mode
flutter run --release

# Specific device
flutter run -d <device_id>

# Hot reload: Press 'r' in terminal
# Hot restart: Press 'R' in terminal
```

### Code Generation
```bash
# Generate all files
dart run build_runner build

# Watch for changes
dart run build_runner watch

# Clean and rebuild
dart run build_runner build --delete-conflicting-outputs
```

### Testing
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/unit/calculator_test.dart

# Generate coverage report
flutter test --coverage
```

## IDE Configuration

### VS Code Settings
Create `.vscode/settings.json`:
```json
{
  "dart.flutterSdkPath": "/path/to/flutter",
  "dart.previewLsp": true,
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll": true
  },
  "files.associations": {
    "*.arb": "json"
  }
}
```

### Recommended Extensions
- Flutter
- Dart
- Pubspec Assist
- Flutter Widget Snippets
- Bracket Pair Colorizer

## Debugging

### Common Issues

1. **Dependencies not found**
```bash
flutter clean
flutter pub get
```

2. **Code generation errors**
```bash
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

3. **Platform-specific build issues**
```bash
# Android
cd android && ./gradlew clean && cd ..

# iOS
cd ios && rm -rf Pods && pod install && cd ..
```

### Debug Tools
- Flutter Inspector (in VS Code/Android Studio)
- Performance profiler
- Network inspector
- Device logs

## Building for Release

### Android
```bash
# Generate key store (first time only)
keytool -genkey -v -keystore android/app/keystore.jks -alias key -keyalg RSA -keysize 2048 -validity 10000

# Build APK
flutter build apk --release

# Build App Bundle (recommended for Play Store)
flutter build appbundle --release
```

### iOS
```bash
# Build iOS
flutter build ios --release

# Archive in Xcode for App Store submission
```

## Code Quality

### Linting
```bash
# Run linter
flutter analyze

# Fix auto-fixable issues
dart fix --apply
```

### Formatting
```bash
# Format all Dart files
dart format .

# Format specific file
dart format lib/main.dart
```

### Code Metrics
```bash
# Install dart_code_metrics
dart pub global activate dart_code_metrics

# Run metrics
metrics lib/
```

## Deployment Pipeline

### Continuous Integration
- GitHub Actions workflow (if using GitHub)
- Automated testing on pull requests
- Code quality checks
- Build verification

### Release Process
1. Version bump in `pubspec.yaml`
2. Update changelog
3. Create release tag
4. Build and upload to stores
5. Monitor crash reports

## Security Considerations

### API Keys Management
- Never commit API keys to version control
- Use environment variables
- Rotate keys regularly
- Implement proper key validation

### Code Obfuscation
```bash
# Build with obfuscation
flutter build apk --obfuscate --split-debug-info=build/debug-info/

# Keep debug info for crash analysis
```

## Performance Optimization

### Build Size
```bash
# Analyze APK size
flutter build apk --analyze-size

# Check bundle size
flutter build appbundle --analyze-size
```

### Memory Usage
- Use Flutter DevTools
- Monitor widget rebuilds
- Optimize image loading
- Profile on real devices

## Troubleshooting

### Common Development Issues

1. **Gradle build failures**
   - Check Java version compatibility
   - Update Gradle wrapper
   - Clear Gradle cache

2. **iOS build failures**
   - Update pods: `cd ios && pod update`
   - Check iOS deployment target
   - Verify provisioning profiles

3. **Firebase integration issues**
   - Verify google-services.json (Android)
   - Verify GoogleService-Info.plist (iOS)
   - Check Firebase project configuration

4. **State management issues**
   - Use Riverpod DevTools
   - Check provider dependencies
   - Verify widget rebuilds

### Getting Help
- Flutter documentation: https://docs.flutter.dev
- Riverpod documentation: https://riverpod.dev
- Stack Overflow with flutter tag
- Flutter Discord community

## Project-Specific Notes

### Turkish Localization
- All text must be properly localized
- Support Turkish characters (ç, ğ, ı, İ, ö, ş, ü)
- Date formats: DD.MM.YYYY
- Number formats: European style

### Medical Content Guidelines
- Always include appropriate disclaimers
- Medical content review process
- Source citations for health information
- Regular content updates

### Privacy Compliance
- KVKK (Turkish data protection law) compliance
- GDPR compliance for EU users
- Clear consent mechanisms
- Data retention policies

---

This setup guide ensures a consistent development environment and follows best practices for Flutter development while addressing the specific needs of the Kadın Atlası application.
