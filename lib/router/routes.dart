// Route names for the application
class Routes {
  // Authentication
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  
  // Main app routes
  static const String home = '/';
  static const String explore = '/explore';
  static const String community = '/community';
  static const String calculators = '/calculators';
  static const String profile = '/profile';
  
  // Content routes
  static const String articleDetail = '/article/:id';
  static const String categoryArticles = '/category/:categoryId';
  static const String search = '/search';
  
  // Forum routes
  static const String forumList = '/forums';
  static const String forumDetail = '/forum/:forumId';
  static const String topicDetail = '/topic/:topicId';
  static const String createTopic = '/forum/:forumId/create-topic';
  static const String createReply = '/topic/:topicId/reply';
  
  // Calculator routes
  static const String menstrualCalculator = '/calculators/menstrual';
  static const String pregnancyCalculator = '/calculators/pregnancy';
  static const String bmiCalculator = '/calculators/bmi';
  static const String calculatorResults = '/calculators/:type/results';
  static const String savedResults = '/calculators/saved';
  
  // Pregnancy guide routes
  static const String pregnancyGuide = '/pregnancy-guide';
  static const String pregnancyWeek = '/pregnancy-guide/week/:week';
  
  // Profile & Settings routes
  static const String settings = '/settings';
  static const String notificationSettings = '/settings/notifications';
  static const String privacySettings = '/settings/privacy';
  static const String favorites = '/profile/favorites';
  static const String forumActivity = '/profile/forum-activity';
  static const String aboutApp = '/about';
  
  // Support routes
  static const String support = '/support';
  static const String faq = '/support/faq';
  static const String contactUs = '/support/contact';
  
  // Error routes
  static const String notFound = '/404';
  static const String error = '/error';
}
