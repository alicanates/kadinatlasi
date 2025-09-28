import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/mascot_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with TickerProviderStateMixin {
  late AnimationController _headerAnimationController;
  late Animation<double> _headerFadeAnimation;
  late Animation<Offset> _headerSlideAnimation;

  final List<Map<String, dynamic>> _quickActions = [
    {
      'title': 'Serbest Gün',
      'subtitle': 'Evet',
      'icon': Icons.favorite,
      'color': AppColors.emeraldGreen,
    },
    {
      'title': 'Smart Gün',
      'subtitle': 'Hayır',
      'icon': Icons.smart_toy,
      'color': AppColors.coral,
    },
    {
      'title': 'Smart Gün',
      'subtitle': 'Yok',
      'icon': Icons.psychology,
      'color': AppColors.lilac,
    },
  ];

  final List<Map<String, dynamic>> _categories = [
    {
      'title': 'Bugün',
      'articles': 5,
      'color': AppColors.emeraldGreen,
      'gradient': LinearGradient(
        colors: [
          AppColors.emeraldGreen.withOpacity(0.8),
          AppColors.turquoise.withOpacity(0.8)
        ],
      ),
    },
    {
      'title': 'Cesur Kadınlar',
      'articles': 8,
      'color': AppColors.warmPink,
      'gradient': LinearGradient(
        colors: [
          AppColors.warmPink.withOpacity(0.8),
          AppColors.coral.withOpacity(0.8)
        ],
      ),
    },
    {
      'title': 'Bedenini keşfet...',
      'articles': 12,
      'color': AppColors.lilac,
      'gradient': LinearGradient(
        colors: [
          AppColors.lilac.withOpacity(0.8),
          AppColors.lavender.withOpacity(0.8)
        ],
      ),
    },
  ];

  final List<Map<String, dynamic>> _popularTopics = [
    {
      'title': 'Dilerini tuttun mu? Hadi gel.',
      'author': 'Dr. Ayşe',
      'readTime': '5 dk',
      'category': 'Psikoloji',
    },
    {
      'title': 'Pep-forum',
      'author': 'Uzm. Dr. Merve',
      'readTime': '3 dk',
      'category': 'Topluluk',
    },
  ];

  @override
  void initState() {
    super.initState();
    _headerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _headerFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _headerAnimationController,
          curve: const Interval(0.0, 0.6, curve: Curves.easeOut)),
    );

    _headerSlideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: _headerAnimationController, curve: Curves.easeOutCubic));

    _headerAnimationController.forward();
  }

  @override
  void dispose() {
    _headerAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final hour = now.hour;
    String greeting;
    if (hour < 12) {
      greeting = 'Günaydın! ☀️';
    } else if (hour < 17) {
      greeting = 'İyi öğlenler! 🌤️';
    } else {
      greeting = 'İyi akşamlar! 🌙';
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // Custom Header with Mascot
            SliverToBoxAdapter(
              child: AnimatedBuilder(
                animation: _headerAnimationController,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _headerFadeAnimation,
                    child: SlideTransition(
                      position: _headerSlideAnimation,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFFFF8E1),
                              Color(0xFFFFFDE7),
                              Color(0xFFF8BBD9),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.warmPink.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const MascotWidget(size: 80),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    greeting,
                                    style: AppTextStyles.headlineSmall.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.warmPink,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Bugün nasıl hissediyorsun?',
                                    style: AppTextStyles.bodyMedium.copyWith(
                                      color:
                                          AppColors.onSurface.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // TODO: Navigate to notifications
                              },
                              icon: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.notifications_outlined,
                                  color: AppColors.warmPink,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Quick Actions
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bugün',
                      style: AppTextStyles.headlineSmall.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: _quickActions.map((action) {
                        return Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.mediumGray.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: action['color'].withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    action['icon'],
                                    color: action['color'],
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  action['title'],
                                  style: AppTextStyles.labelMedium,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  action['subtitle'],
                                  style: AppTextStyles.labelSmall.copyWith(
                                    color: action['color'],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 32)),

            // Categories Section
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bedenini keşfet...',
                          style: AppTextStyles.headlineSmall.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // TODO: Show all categories
                          },
                          child: const Text('Tümü'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),

            // Categories Grid
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final category = _categories[index];
                    return Container(
                      decoration: BoxDecoration(
                        gradient: category['gradient'],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: category['color'].withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        category['title'],
                                        style:
                                            AppTextStyles.titleMedium.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '${category['articles']} makale',
                                        style: AppTextStyles.bodySmall.copyWith(
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: _categories.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 32)),

            // Popular Topics Section
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Seks ve İlişkiler',
                          style: AppTextStyles.headlineSmall.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('SOR'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('OKU'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),

            // Popular Topics List
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final topic = _popularTopics[index];
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: InkWell(
                        onTap: () {
                          // TODO: Navigate to topic
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.warmPink.withOpacity(0.8),
                                      AppColors.coral.withOpacity(0.8),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.forum,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      topic['title'],
                                      style: AppTextStyles.titleMedium,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text(
                                          topic['author'],
                                          style:
                                              AppTextStyles.bodySmall.copyWith(
                                            color: AppColors.onSurfaceVariant,
                                          ),
                                        ),
                                        Text(
                                          ' • ${topic['readTime']}',
                                          style:
                                              AppTextStyles.bodySmall.copyWith(
                                            color: AppColors.onSurfaceVariant,
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: AppColors.warmPink
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            topic['category'],
                                            style: AppTextStyles.labelSmall
                                                .copyWith(
                                              color: AppColors.warmPink,
                                            ),
                                          ),
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
                    ),
                  );
                },
                childCount: _popularTopics.length,
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
    );
  }
}
