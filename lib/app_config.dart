class AppConfig {
  final String appName;
  final String flavor;
  final String equranBaseUrl;
  final String muslimApiBaseUrl;

  const AppConfig({
    required this.appName,
    required this.flavor,
    required this.equranBaseUrl,
    required this.muslimApiBaseUrl,
  });

  static late AppConfig instance;

  static void initialize(AppConfig config) {
    instance = config;
  }
}
