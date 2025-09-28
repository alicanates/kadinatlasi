import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/mascot_widget.dart';
import '../../../../router/routes.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen>
    with TickerProviderStateMixin {
  final List<String> _selectedInterests = [];
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  final List<Map<String, dynamic>> _interests = [
    {
      'key': 'general_wellness',
      'title': 'Genel Sağlık',
      'description': 'Günlük sağlık ve yaşam tarzı',
      'icon': Icons.favorite,
      'color': AppColors.emeraldGreen,
    },
    {
      'key': 'pregnancy',
      'title': 'Gebelik',
      'description': 'Hamilelik rehberi ve destek',
      'icon': Icons.pregnant_woman,
      'color': AppColors.warmPink,
    },
    {
      'key': 'fitness',
      'title': 'Fitness',
      'description': 'Egzersiz ve fiziksel aktivite',
      'icon': Icons.fitness_center,
      'color': AppColors.coral,
    },
    {
      'key': 'astrology',
      'title': 'Astroloji',
      'description': 'Günlük burç ve yıldız haritası',
      'icon': Icons.star,
      'color': AppColors.lilac,
    },
    {
      'key': 'psychology',
      'title': 'Psikoloji',
      'description': 'Mental sağlık ve yaşam',
      'icon': Icons.psychology,
      'color': AppColors.turquoise,
    },
    {
      'key': 'beauty',
      'title': 'Güzellik',
      'description': 'Cilt bakımı ve kozmetik',
      'icon': Icons.face,
      'color': AppColors.lavender,
    },
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeOutCubic));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.arrow_back, color: AppColors.onSurface),
          ),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      // Progress indicator
                      Row(
                        children: List.generate(
                            4,
                            (index) => Container(
                                  width: 40,
                                  height: 4,
                                  margin: const EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                )),
                      ),

                      const SizedBox(height: 40),

                      // Header with mascot
                      Row(
                        children: [
                          const MascotWidget(size: 80),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'İlgi Alanlarını Seç',
                                  style: AppTextStyles.displaySmall.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Sana uygun içerikleri önermemiz için ilgilendiğin konuları seç.',
                                  style: AppTextStyles.bodyMedium.copyWith(
                                    color: AppColors.onSurface.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 32),

                      // Interests grid
                      Expanded(
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.6,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                          itemCount: _interests.length,
                          itemBuilder: (context, index) {
                            final interest = _interests[index];
                            final isSelected =
                                _selectedInterests.contains(interest['key']);

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (isSelected) {
                                    _selectedInterests.remove(interest['key']);
                                  } else {
                                    _selectedInterests.add(interest['key']);
                                  }
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? interest['color'].withOpacity(0.1)
                                      : AppColors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: isSelected
                                        ? interest['color']
                                        : AppColors.mediumGray.withOpacity(0.3),
                                    width: 2,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: isSelected
                                          ? interest['color'].withOpacity(0.2)
                                          : AppColors.mediumGray
                                              .withOpacity(0.1),
                                      blurRadius: 10,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: interest['color'].withOpacity(
                                            isSelected ? 1.0 : 0.1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Icon(
                                          interest['icon'],
                                          size: 24,
                                          color: isSelected
                                              ? Colors.white
                                              : interest['color'],
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        interest['title'],
                                        style:
                                            AppTextStyles.titleSmall.copyWith(
                                          color: isSelected
                                              ? interest['color']
                                              : AppColors.onSurface,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      if (isSelected) ...[
                                        const SizedBox(height: 2),
                                        Icon(
                                          Icons.check_circle,
                                          color: interest['color'],
                                          size: 14,
                                        ),
                                      ] else ...[
                                        const SizedBox(height: 2),
                                        Text(
                                          interest['description'],
                                          style:
                                              AppTextStyles.bodySmall.copyWith(
                                            color: AppColors.onSurfaceVariant,
                                            fontSize: 10,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Selected count
                      if (_selectedInterests.isNotEmpty)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '${_selectedInterests.length} alan seçildi',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                      const SizedBox(height: 16),

                      // Continue button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _selectedInterests.isNotEmpty
                              ? () {
                                  context.go(Routes.home);
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Keşfetmeye Başla',
                                style: AppTextStyles.titleMedium.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.explore,
                                color: AppColors.white,
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Skip button
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            context.go(Routes.home);
                          },
                          child: Text(
                            'Şimdi değil',
                            style: AppTextStyles.titleMedium.copyWith(
                              color: AppColors.onSurface.withOpacity(0.6),
                            ),
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
    );
  }
}
