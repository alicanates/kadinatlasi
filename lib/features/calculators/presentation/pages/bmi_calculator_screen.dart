import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class BmiCalculatorScreen extends StatelessWidget {
  const BmiCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VKİ Hesaplayıcısı'),
      ),
      body: const Center(
        child: Text(
          'VKİ Hesaplayıcısı\n(Geliştirilecek)',
          style: AppTextStyles.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
