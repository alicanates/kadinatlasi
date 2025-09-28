import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.profile),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // TODO: Navigate to settings
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile header
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: AppColors.surfaceVariant,
                      child: Icon(Icons.person, size: 32),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Misafir Kullanıcı',
                            style: AppTextStyles.titleLarge,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Hesap oluşturmak için',
                            style: AppTextStyles.bodySmall,
                          ),
                          TextButton(
                            onPressed: () {
                              // TODO: Navigate to login
                            },
                            child: const Text('Giriş Yap'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Menu items
            _buildMenuItem(
              icon: Icons.favorite,
              title: l10n.favorites,
              subtitle: 'Favorilediğiniz makaleler',
              onTap: () {
                // TODO: Navigate to favorites
              },
            ),
            _buildMenuItem(
              icon: Icons.forum,
              title: 'Forum Etkinliğim',
              subtitle: 'Konularınız ve yanıtlarınız',
              onTap: () {
                // TODO: Navigate to forum activity
              },
            ),
            _buildMenuItem(
              icon: Icons.calculate,
              title: 'Kaydedilen Sonuçlar',
              subtitle: 'Hesaplayıcı sonuçlarınız',
              onTap: () {
                // TODO: Navigate to saved results
              },
            ),
            _buildMenuItem(
              icon: Icons.notifications,
              title: l10n.notifications,
              subtitle: 'Bildirim ayarları',
              onTap: () {
                // TODO: Navigate to notification settings
              },
            ),
            _buildMenuItem(
              icon: Icons.privacy_tip,
              title: l10n.privacy,
              subtitle: 'Gizlilik kontrolleriniz',
              onTap: () {
                // TODO: Navigate to privacy settings
              },
            ),
            _buildMenuItem(
              icon: Icons.help,
              title: l10n.support,
              subtitle: 'Yardım ve destek',
              onTap: () {
                // TODO: Navigate to support
              },
            ),
            _buildMenuItem(
              icon: Icons.info,
              title: l10n.about,
              subtitle: 'Uygulama hakkında',
              onTap: () {
                // TODO: Navigate to about
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: AppColors.primary,
            size: 20,
          ),
        ),
        title: Text(title, style: AppTextStyles.titleMedium),
        subtitle: Text(subtitle, style: AppTextStyles.bodySmall),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
