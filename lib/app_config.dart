class AppConfig {
  final String appName;
  final String flavor;
  final String equranBaseUrl;
  final String muslimApiBaseUrl;
  final String aladhanBaseUrl; // ⬅️ Tambahan baru

  const AppConfig({
    required this.appName,
    required this.flavor,
    required this.equranBaseUrl,
    required this.muslimApiBaseUrl,
    required this.aladhanBaseUrl, // ⬅️ Jangan lupa inisialisasi di constructor juga
  });

  static late AppConfig instance;

  static void initialize(AppConfig config) {
    instance = config;
  }
}
