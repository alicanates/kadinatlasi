import 'package:flutter/material.dart';

/// App localization delegate and strings
class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  // General
  String get appName => 'Kadın Atlası';
  String get ok => 'Tamam';
  String get cancel => 'İptal';
  String get yes => 'Evet';
  String get no => 'Hayır';
  String get save => 'Kaydet';
  String get delete => 'Sil';
  String get edit => 'Düzenle';
  String get loading => 'Yükleniyor...';
  String get retry => 'Tekrar Dene';
  String get done => 'Bitti';
  String get next => 'İleri';
  String get back => 'Geri';
  String get skip => 'Atla';
  String get search => 'Ara';
  String get share => 'Paylaş';
  String get close => 'Kapat';

  // Navigation
  String get explore => 'Keşfet';
  String get community => 'Topluluk';
  String get calculators => 'Hesaplayıcılar';
  String get profile => 'Profil';
  String get settings => 'Ayarlar';

  // Authentication
  String get signIn => 'Giriş Yap';
  String get signUp => 'Kaydol';
  String get signOut => 'Çıkış Yap';
  String get email => 'E-posta';
  String get password => 'Şifre';
  String get confirmPassword => 'Şifreyi Onayla';
  String get forgotPassword => 'Şifremi Unuttum?';
  String get displayName => 'Görünen Ad';
  String get createAccount => 'Hesap Oluştur';
  String get alreadyHaveAccount => 'Zaten hesabın var mı? Giriş Yap';
  String get dontHaveAccount => 'Hesabın yok mu? Kaydol';
  String get continueAsGuest => 'Misafir Olarak Devam Et';

  // Onboarding
  String get welcome => 'Hoş Geldin';
  String get welcomeMessage =>
      'Sağlığın, yıldızların ve topluluk desteği burada birleşiyor.';
  String get getStarted => 'Başla';
  String get selectInterests => 'Hangi konularla ilgileniyorsun?';
  String get generalWellness => 'Genel Sağlık';
  String get pregnancy => 'Gebelik';
  String get fitness => 'Fitness';
  String get astrology => 'Astroloji';
  String get birthDate => 'Doğum Tarihi';
  String get lastMenstrualPeriod => 'Son Adet Tarihi';
  String get expectedDueDate => 'Beklenen Doğum Tarihi';

  // Content
  String get articles => 'Makaleler';
  String get readTime => 'Okuma Süresi';
  String get relatedArticles => 'İlgili Yazılar';
  String get favorites => 'Favoriler';
  String get addToFavorites => 'Favorilere Ekle';
  String get removeFromFavorites => 'Favorilerden Çıkar';
  String get addedToFavorites => 'Favorilere eklendi';
  String get removedFromFavorites => 'Favorilerden çıkarıldı';

  // Forum
  String get forums => 'Forumlar';
  String get topics => 'Konular';
  String get posts => 'Gönderiler';
  String get replies => 'Yanıtlar';
  String get newTopic => 'Yeni Konu';
  String get createTopic => 'Konu Oluştur';
  String get reply => 'Yanıtla';
  String get title => 'Başlık';
  String get message => 'Mesaj';
  String get post => 'Gönder';
  String get like => 'Beğen';
  String get unlike => 'Beğenmekten Vazgeç';
  String get report => 'Şikayet Et';
  String get reportContent => 'İçeriği Şikayet Et';
  String get reportReason => 'Şikayet Nedeni';
  String get spam => 'Spam';
  String get harassment => 'Taciz';
  String get inappropriateContent => 'Uygunsuz İçerik';
  String get misinformation => 'Yanlış Bilgi';
  String get other => 'Diğer';
  String get reportSubmitted =>
      'Şikayetiniz gönderildi, moderatörlerimiz inceleyecek.';
  String get anonymousPost => 'Anonim Gönderi';

  // Calculators
  String get menstrualCycle => 'Adet Döngüsü';
  String get pregnancyWeek => 'Hamilelik Haftası';
  String get bmi => 'VKİ';
  String get calculate => 'Hesapla';
  String get results => 'Sonuçlar';
  String get saveResult => 'Sonucu Kaydet';
  String get savedResults => 'Kaydedilen Sonuçlar';
  String get cycleLength => 'Döngü Uzunluğu';
  String get periodLength => 'Adet Süresi';
  String get lastPeriodDate => 'Son Adet Tarihi';
  String get nextPeriodDate => 'Bir Sonraki Adet Tarihi';
  String get ovulationDate => 'Yumurtlama Tarihi';
  String get fertileWindow => 'Doğurgan Pencere';
  String get height => 'Boy';
  String get weight => 'Kilo';
  String get bmiValue => 'VKİ Değeri';
  String get bmiCategory => 'VKİ Kategorisi';
  String get underweight => 'Zayıf';
  String get normalWeight => 'Normal Kilo';
  String get overweight => 'Fazla Kilolu';
  String get obese => 'Obez';

  // Pregnancy Guide
  String get pregnancyGuide => 'Gebelik Rehberi';
  String get weeklyGuide => 'Haftalık Rehber';
  String get pregnancyWeeks => 'Hamilelik Haftaları';
  String get yourWeek => 'Haftanız';
  String get babyDevelopment => 'Bebek Gelişimi';
  String get motherChanges => 'Anne Değişiklikleri';
  String get weeklyTips => 'Haftalık İpuçları';

  // Settings
  String get notifications => 'Bildirimler';
  String get notificationSettings => 'Bildirim Ayarları';
  String get pregnancyNotifications => 'Hamilelik Bildirimleri';
  String get astrologyNotifications => 'Astroloji Bildirimleri';
  String get forumNotifications => 'Forum Bildirimleri';
  String get notificationHours => 'Bildirim Saatleri';
  String get ramadanMode => 'Ramazan Modu';
  String get privacy => 'Gizlilik';
  String get privacySettings => 'Gizlilik Ayarları';
  String get dataExport => 'Verilerimi İndir';
  String get deleteAccount => 'Hesabımı Sil';
  String get about => 'Hakkında';
  String get termsOfService => 'Hizmet Şartları';
  String get privacyPolicy => 'Gizlilik Politikası';

  // Support
  String get support => 'Destek';
  String get faq => 'Sıkça Sorulan Sorular';
  String get contactUs => 'Bize Ulaşın';
  String get subject => 'Konu';
  String get send => 'Gönder';
  String get messageIsSent => 'Mesajınız başarıyla gönderildi.';

  // Errors
  String get error => 'Hata';
  String get networkError =>
      'İnternet bağlantınızı kontrol edin ve tekrar deneyin.';
  String get serverError =>
      'Sunucu hatası oluştu. Lütfen daha sonra tekrar deneyin.';
  String get unknownError =>
      'Beklenmeyen bir hata oluştu. Lütfen tekrar deneyin.';
  String get validationError =>
      'Girdiğiniz bilgiler geçersiz. Lütfen kontrol edin.';
  String get authenticationError =>
      'Giriş bilgileriniz hatalı. Lütfen kontrol edin.';
  String get permissionError => 'Bu işlem için gerekli izin verilmemiş.';
  String get contentNotFound => 'İstenen içerik bulunamadı.';
  String get rateLimitError =>
      'Çok fazla istek gönderdiniz. Lütfen bekleyip tekrar deneyin.';

  // Medical Disclaimers
  String get medicalDisclaimer =>
      'Bu içerik bilgilendirme amaçlıdır; kişisel durumunuz için hekiminize danışın.';
  String get calculatorDisclaimer =>
      'Bu hesaplama aracı eğitim amaçlıdır ve tıbbi tavsiye değildir. Kişisel sağlık durumunuz için mutlaka hekiminize danışın.';
  String get pregnancyDisclaimer =>
      'Bu tahminler genel klinik kurallara dayanır. Resmi doğum tarihiniz sadece hekiminiz tarafından belirlenebilir.';

  // Privacy & Consent
  String get consent => 'Onay';
  String get agreeToTerms => 'Hizmet Şartlarını kabul ediyorum';
  String get agreeToPrivacy => 'Gizlilik Politikasını kabul ediyorum';
  String get marketingConsent => 'Pazarlama e-postalarını almak istiyorum';
  String get analyticsConsent =>
      'Anonim kullanım verilerinin toplanmasına izin veriyorum';
  String get localStorageConsent =>
      'Bu sonuçları cihazımda kaydetmek istiyorum';
  String get consentRequired => 'Bu işlem için onayınız gereklidir.';

  // Time & Date
  String get today => 'Bugün';
  String get yesterday => 'Dün';
  String get tomorrow => 'Yarın';
  String get thisWeek => 'Bu Hafta';
  String get lastWeek => 'Geçen Hafta';
  String get thisMonth => 'Bu Ay';
  String get lastMonth => 'Geçen Ay';

  // Status Messages
  String get success => 'Başarılı';
  String get warning => 'Uyarı';
  String get info => 'Bilgi';
  String get noResults => 'Sonuç bulunamadı.';
  String get noContent => 'İçerik bulunamadı.';
  String get offline => 'Çevrimdışı';
  String get online => 'Çevrimiçi';
  String get connecting => 'Bağlanıyor...';
  String get syncing => 'Senkronize ediliyor...';
  String get saved => 'Kaydedildi';
  String get draft => 'Taslak';
  String get published => 'Yayınlandı';
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['tr', 'en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
