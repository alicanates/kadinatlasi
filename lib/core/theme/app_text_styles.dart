import 'package:flutter/material.dart';
import 'app_colors.dart';

/// App text styles following the brand guidelines
class AppTextStyles {
  // Base font families
  static const String interFontFamily = 'Inter';
  static const String robotoFontFamily = 'Roboto';
  
  // Display styles (Headlines)
  static const TextStyle displayLarge = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.onBackground,
  );
  
  static const TextStyle displayMedium = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.onBackground,
  );
  
  static const TextStyle displaySmall = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: AppColors.onBackground,
  );
  
  // Headline styles
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.onBackground,
  );
  
  static const TextStyle headlineMedium = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.onBackground,
  );
  
  static const TextStyle headlineSmall = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.onBackground,
  );
  
  // Title styles
  static const TextStyle titleLarge = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.onSurface,
  );
  
  static const TextStyle titleMedium = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.onSurface,
  );
  
  static const TextStyle titleSmall = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.onSurfaceVariant,
  );
  
  // Body styles
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.6,
    color: AppColors.onSurface,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.6,
    color: AppColors.onSurface,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: AppColors.onSurfaceVariant,
  );
  
  // Label styles
  static const TextStyle labelLarge = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.onSurface,
  );
  
  static const TextStyle labelMedium = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.onSurfaceVariant,
  );
  
  static const TextStyle labelSmall = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.onSurfaceVariant,
  );
  
  // Special text styles for specific use cases
  static const TextStyle articleTitle = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.onBackground,
  );
  
  static const TextStyle articleSubtitle = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: AppColors.onSurfaceVariant,
  );
  
  static const TextStyle articleBody = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.7,
    color: AppColors.onSurface,
  );
  
  static const TextStyle forumTopicTitle = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.onSurface,
  );
  
  static const TextStyle forumPost = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 15,
    fontWeight: FontWeight.normal,
    height: 1.6,
    color: AppColors.onSurface,
  );
  
  static const TextStyle calculatorLabel = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.onSurface,
  );
  
  static const TextStyle calculatorResult = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.primary,
  );
  
  static const TextStyle disclaimer = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: AppColors.onSurfaceVariant,
    fontStyle: FontStyle.italic,
  );
  
  static const TextStyle button = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0.5,
  );
  
  static const TextStyle tabLabel = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );
  
  static const TextStyle chip = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );
  
  static const TextStyle caption = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 11,
    fontWeight: FontWeight.normal,
    height: 1.4,
    color: AppColors.onSurfaceVariant,
  );
  
  // Error and success messages
  static const TextStyle errorText = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.4,
    color: AppColors.error,
  );
  
  static const TextStyle successText = TextStyle(
    fontFamily: robotoFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.4,
    color: AppColors.success,
  );
  
  // Methods for creating text styles with colors
  static TextStyle get primaryText => bodyMedium.copyWith(color: AppColors.primary);
  static TextStyle get secondaryText => bodyMedium.copyWith(color: AppColors.secondary);
  static TextStyle get mutedText => bodySmall.copyWith(color: AppColors.onSurfaceVariant);
  
  // Methods for creating emphasized text
  static TextStyle emphasize(TextStyle style) => style.copyWith(fontWeight: FontWeight.bold);
  static TextStyle withColor(TextStyle style, Color color) => style.copyWith(color: color);
  static TextStyle withSize(TextStyle style, double fontSize) => style.copyWith(fontSize: fontSize);
}
