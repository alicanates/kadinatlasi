import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class PregnancyCalculatorScreen extends StatelessWidget {
  const PregnancyCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hamilelik Haftası'),
      ),
      body: const Center(
        child: Text(
          'Hamilelik Hesaplayıcısı\n(Geliştirilecek)',
          style: AppTextStyles.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
