import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';

class CalculatorListScreen extends StatelessWidget {
  const CalculatorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final calculators = [
      {
        'title': 'Adet Döngüsü Takvimi',
        'description': 'Sonraki adet tarihini ve doğurgan dönemi hesapla',
        'icon': Icons.calendar_month,
        'color': AppColors.warmPink,
        'route': '/calculators/menstrual',
      },
      {
        'title': 'Hamilelik Haftası',
        'description': 'Gebelik haftanı ve tahmini doğum tarihini öğren',
        'icon': Icons.pregnant_woman,
        'color': AppColors.coral,
        'route': '/calculators/pregnancy',
      },
      {
        'title': 'VKİ Hesaplayıcısı',
        'description': 'Vücut kitle indeksini hesapla',
        'icon': Icons.fitness_center,
        'color': AppColors.emeraldGreen,
        'route': '/calculators/bmi',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.calculators),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Medical disclaimer
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.warning.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.warning.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.medical_information_outlined,
                    color: AppColors.warning,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Bu hesaplama araçları eğitim amaçlıdır ve tıbbi tavsiye değildir.',
                      style: AppTextStyles.caption.copyWith(color: AppColors.warning),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            Text(
              'Sağlık Hesaplayıcıları',
              style: AppTextStyles.headlineSmall,
            ),
            const SizedBox(height: 16),
            
            Expanded(
              child: ListView.separated(
                itemCount: calculators.length,
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final calculator = calculators[index];
                  return _buildCalculatorCard(calculator);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalculatorCard(Map<String, dynamic> calculator) {
    return Card(
      child: InkWell(
        onTap: () {
          // TODO: Navigate to specific calculator
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: (calculator['color'] as Color).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  calculator['icon'],
                  color: calculator['color'],
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      calculator['title'],
                      style: AppTextStyles.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      calculator['description'],
                      style: AppTextStyles.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColors.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
