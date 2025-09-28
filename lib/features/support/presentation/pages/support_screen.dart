import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destek'),
      ),
      body: const Center(
        child: Text(
          'Destek Ekranı\n(Geliştirilecek)',
          style: AppTextStyles.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
