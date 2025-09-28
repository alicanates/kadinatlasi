import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';
import '../../../../router/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> _selectedInterests = [];

  final List<Map<String, dynamic>> _interests = [
    {
      'key': 'general_wellness',
      'title': 'Genel Sağlık',
      'icon': Icons.favorite,
      'color': AppColors.emeraldGreen,
    },
    {
      'key': 'pregnancy',
      'title': 'Gebelik',
      'icon': Icons.pregnant_woman,
      'color': AppColors.warmPink,
    },
    {
      'key': 'fitness',
      'title': 'Fitness',
      'icon': Icons.fitness_center,
      'color': AppColors.coral,
    },
    {
      'key': 'astrology',
      'title': 'Astroloji',
      'icon': Icons.star,
      'color': AppColors.lilac,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          children: [
            _buildWelcomePage(l10n),
            _buildInterestsPage(l10n),
            _buildAccountSetupPage(l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomePage(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(60),
            ),
            child: const Icon(
              Icons.favorite,
              size: 60,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            l10n.welcome,
            style: AppTextStyles.displayMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.welcomeMessage,
            style: AppTextStyles.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(l10n.getStarted),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInterestsPage(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            l10n.selectInterests,
            style: AppTextStyles.headlineMedium,
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: _interests.length,
              itemBuilder: (context, index) {
                final interest = _interests[index];
                final isSelected = _selectedInterests.contains(interest['key']);
                
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? interest['color'].withOpacity(0.1)
                          : AppColors.surfaceVariant,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: isSelected
                            ? interest['color']
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          interest['icon'],
                          size: 48,
                          color: isSelected
                              ? interest['color']
                              : AppColors.onSurfaceVariant,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          interest['title'],
                          style: AppTextStyles.titleMedium.copyWith(
                            color: isSelected
                                ? interest['color']
                                : AppColors.onSurfaceVariant,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _selectedInterests.isNotEmpty
                  ? () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  : null,
              child: Text(l10n.next),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(l10n.skip),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountSetupPage(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_circle,
            size: 80,
            color: AppColors.primary,
          ),
          const SizedBox(height: 24),
          Text(
            'Hesap Kurulumu',
            style: AppTextStyles.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Favorilerinizi kaydetmek ve topluluğa katılmak için hesap oluşturabilirsiniz.',
            style: AppTextStyles.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.go(Routes.register);
              },
              child: Text(l10n.createAccount),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                context.go(Routes.login);
              },
              child: Text(l10n.signIn),
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context.go(Routes.home);
            },
            child: Text(l10n.continueAsGuest),
          ),
        ],
      ),
    );
  }
}
