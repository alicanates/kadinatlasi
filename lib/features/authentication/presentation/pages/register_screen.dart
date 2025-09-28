import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';
import '../../../../router/routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _displayNameController = TextEditingController();
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _agreeToTerms = false;
  bool _agreeToPrivacy = false;
  bool _marketingEmails = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _displayNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.signUp),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),

                // Header
                const Text(
                  'Hesap Oluştur',
                  style: AppTextStyles.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Kadın Atlası topluluğuna katıl',
                  style: AppTextStyles.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Display name field
                TextFormField(
                  controller: _displayNameController,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => setState(() {}), // Trigger rebuild to update label color
                  decoration: InputDecoration(
                    labelText: l10n.displayName,
                    labelStyle: TextStyle(
                      color: _displayNameController.text.isNotEmpty 
                        ? AppColors.primary 
                        : AppColors.onSurface.withOpacity(0.6),
                    ),
                    prefixIcon: const Icon(Icons.person_outlined),
                    helperText: 'Takma ad kullanmanızı öneririz',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Görünen ad gerekli';
                    }
                    if (value.length < 2) {
                      return 'En az 2 karakter olmalı';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Email field
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => setState(() {}), // Trigger rebuild to update label color
                  decoration: InputDecoration(
                    labelText: l10n.email,
                    labelStyle: TextStyle(
                      color: _emailController.text.isNotEmpty 
                        ? AppColors.primary 
                        : AppColors.onSurface.withOpacity(0.6),
                    ),
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'E-posta adresi gerekli';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Geçerli bir e-posta adresi girin';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password field
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => setState(() {}), // Trigger rebuild to update label color
                  decoration: InputDecoration(
                    labelText: l10n.password,
                    labelStyle: TextStyle(
                      color: _passwordController.text.isNotEmpty 
                        ? AppColors.primary 
                        : AppColors.onSurface.withOpacity(0.6),
                    ),
                    prefixIcon: const Icon(Icons.lock_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    helperText: 'En az 8 karakter',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Şifre gerekli';
                    }
                    if (value.length < 8) {
                      return 'Şifre en az 8 karakter olmalı';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Confirm password field
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: _obscureConfirmPassword,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) => setState(() {}), // Trigger rebuild to update label color
                  decoration: InputDecoration(
                    labelText: l10n.confirmPassword,
                    labelStyle: TextStyle(
                      color: _confirmPasswordController.text.isNotEmpty 
                        ? AppColors.primary 
                        : AppColors.onSurface.withOpacity(0.6),
                    ),
                    prefixIcon: const Icon(Icons.lock_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Şifre onayı gerekli';
                    }
                    if (value != _passwordController.text) {
                      return 'Şifreler eşleşmiyor';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Terms and privacy checkboxes
                CheckboxListTile(
                  value: _agreeToTerms,
                  onChanged: (value) {
                    setState(() {
                      _agreeToTerms = value ?? false;
                    });
                  },
                  title: const Text('Hizmet Şartlarını kabul ediyorum'),
                  subtitle: const Text('Zorunlu'),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                ),

                CheckboxListTile(
                  value: _agreeToPrivacy,
                  onChanged: (value) {
                    setState(() {
                      _agreeToPrivacy = value ?? false;
                    });
                  },
                  title: const Text('Gizlilik Politikasını kabul ediyorum'),
                  subtitle: const Text('Zorunlu'),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                ),

                CheckboxListTile(
                  value: _marketingEmails,
                  onChanged: (value) {
                    setState(() {
                      _marketingEmails = value ?? false;
                    });
                  },
                  title: const Text('Pazarlama e-postalarını almak istiyorum'),
                  subtitle: const Text('İsteğe bağlı'),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                ),
                const SizedBox(height: 24),

                // Register button
                ElevatedButton(
                  onPressed: _isLoading || !_agreeToTerms || !_agreeToPrivacy
                      ? null
                      : _handleRegister,
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(l10n.signUp),
                ),
                const SizedBox(height: 16),

                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Zaten hesabın var mı? ',
                      style: AppTextStyles.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () => context.go(Routes.login),
                      child: Text(l10n.signIn),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // TODO: Implement actual registration logic
      await Future.delayed(const Duration(seconds: 2)); // Simulate API call

      if (mounted) {
        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Hesabınız oluşturuldu! Profil bilgilerinizi tamamlayalım.'),
            backgroundColor: AppColors.success,
          ),
        );

        // Navigate to birth date for profile completion
        context.go(Routes.birthDate);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Kayıt başarısız: ${e.toString()}'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
