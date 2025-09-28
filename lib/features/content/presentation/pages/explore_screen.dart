import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  
  final List<String> _categories = [
    'Tümü',
    'Gebelik',
    'Sağlık',
    'Fitness',
    'Psikoloji',
    'Astroloji',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Navigate to search
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Show notifications
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _categories.map((category) => Tab(text: category)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _categories.map((category) => _buildCategoryContent(category)).toList(),
      ),
    );
  }

  Widget _buildCategoryContent(String category) {
    return CustomScrollView(
      slivers: [
        // Featured articles carousel
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => _buildFeaturedArticleCard(index),
            ),
          ),
        ),
        
        // Section header
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Son Makaleler',
              style: AppTextStyles.headlineSmall,
            ),
          ),
        ),
        
        // Articles list
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _buildArticleCard(index),
            childCount: 10,
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedArticleCard(int index) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: AppColors.primaryGradient,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                color: AppColors.primary.withOpacity(0.8),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Öne Çıkan',
                    style: AppTextStyles.labelSmall.copyWith(color: AppColors.white),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Hamilelik Döneminde Beslenme Rehberi',
                  style: AppTextStyles.titleLarge.copyWith(color: AppColors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '5 dk okuma',
                  style: AppTextStyles.bodySmall.copyWith(color: AppColors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArticleCard(int index) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to article detail
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article image
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.article,
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 16),
              
              // Article content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Doğum Sonrası İlk 40 Gün: Lohusalık Dönemi',
                      style: AppTextStyles.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Doğum sonrası dönemde annelerin bilmesi gerekenler...',
                      style: AppTextStyles.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.pregnancyColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Gebelik',
                            style: AppTextStyles.labelSmall,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          '3 dk',
                          style: AppTextStyles.labelSmall,
                        ),
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.favorite_border,
                          size: 16,
                          color: AppColors.onSurfaceVariant,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
