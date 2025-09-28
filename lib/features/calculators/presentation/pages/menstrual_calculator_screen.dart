import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class MenstrualCalculatorScreen extends StatelessWidget {
  const MenstrualCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adet Döngüsü Takvimi'),
      ),
      body: const Center(
        child: Text(
          'Adet Döngüsü Hesaplayıcısı\n(Geliştirilecek)',
          style: AppTextStyles.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
