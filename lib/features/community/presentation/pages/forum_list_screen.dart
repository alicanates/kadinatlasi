import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';

class ForumListScreen extends StatefulWidget {
  const ForumListScreen({super.key});

  @override
  State<ForumListScreen> createState() => _ForumListScreenState();
}

class _ForumListScreenState extends State<ForumListScreen> {
  final List<Map<String, dynamic>> _forums = [
    {
      'id': '1',
      'name': 'Genel Sağlık',
      'description': 'Kadın sağlığı hakkında genel konular',
      'topicCount': 124,
      'icon': Icons.health_and_safety,
      'color': AppColors.emeraldGreen,
    },
    {
      'id': '2', 
      'name': 'Gebelik Süreci',
      'description': 'Hamilelik deneyimleri ve sorular',
      'topicCount': 89,
      'icon': Icons.pregnant_woman,
      'color': AppColors.warmPink,
    },
    {
      'id': '3',
      'name': 'Fitness & Beslenme',
      'description': 'Spor ve sağlıklı yaşam',
      'topicCount': 67,
      'icon': Icons.fitness_center,
      'color': AppColors.coral,
    },
    {
      'id': '4',
      'name': 'Psikoloji & Yaşam',
      'description': 'Ruh sağlığı ve kişisel gelişim',
      'topicCount': 156,
      'icon': Icons.psychology,
      'color': AppColors.lilac,
    },
    {
      'id': '5',
      'name': 'Astroloji Sohbetleri',
      'description': 'Yıldızlar ve burçlar hakkında',
      'topicCount': 43,
      'icon': Icons.star,
      'color': AppColors.turquoise,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.community),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Navigate to forum search
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _forums.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final forum = _forums[index];
          return _buildForumCard(forum);
        },
      ),
    );
  }

  Widget _buildForumCard(Map<String, dynamic> forum) {
    return Card(
      child: InkWell(
        onTap: () {
          // TODO: Navigate to forum topics
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
                  color: (forum['color'] as Color).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  forum['icon'],
                  color: forum['color'],
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      forum['name'],
                      style: AppTextStyles.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      forum['description'],
                      style: AppTextStyles.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${forum['topicCount']} konu',
                      style: AppTextStyles.caption,
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
