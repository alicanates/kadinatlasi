import 'package:flutter/material.dart';

/// App color palette following the brand guidelines
class AppColors {
  // Primary palette (calming & feminine)
  static const Color warmPink = Color(0xFFE91E63);
  static const Color softPink = Color(0xFFF8BBD9);
  static const Color coral = Color(0xFFFF7043);
  static const Color lilac = Color(0xFF9C27B0);
  static const Color lavender = Color(0xFFE1BEE7);
  
  // Accent palette (highlight & action)
  static const Color emeraldGreen = Color(0xFF4CAF50);
  static const Color turquoise = Color(0xFF26C6DA);
  
  // Neutral palette (backgrounds & text)
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGray = Color(0xFFF5F5F5);
  static const Color mediumGray = Color(0xFFE0E0E0);
  static const Color darkGray = Color(0xFF424242);
  static const Color black = Color(0xFF212121);
  static const Color beige = Color(0xFFFFF8E1);
  static const Color softCream = Color(0xFFFFFDE7);
  
  // Semantic colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFF44336);
  static const Color info = Color(0xFF2196F3);
  
  // Surface colors
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  static const Color background = Color(0xFFFAFAFA);
  
  // Text colors
  static const Color onSurface = Color(0xFF1C1B1F);
  static const Color onSurfaceVariant = Color(0xFF49454F);
  static const Color onBackground = Color(0xFF1C1B1F);
  
  // Brand specific
  static const Color primary = warmPink;
  static const Color onPrimary = white;
  static const Color secondary = emeraldGreen;
  static const Color onSecondary = white;
  static const Color tertiary = turquoise;
  static const Color onTertiary = white;
  
  // Special colors for features
  static const Color pregnancyColor = Color(0xFFE8F5E8);
  static const Color astrologyColor = Color(0xFFF3E5F5);
  static const Color forumColor = Color(0xFFE3F2FD);
  static const Color calculatorColor = Color(0xFFFFF3E0);
  
  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [warmPink, coral],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [emeraldGreen, turquoise],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient softGradient = LinearGradient(
    colors: [softPink, lavender],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
