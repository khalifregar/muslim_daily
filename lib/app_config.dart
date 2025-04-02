import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  final String appName;
  final String flavor;
  final String equranBaseUrl;
  final String muslimApiBaseUrl;
  final String aladhanBaseUrl;
  final String muslimDailyBaseUrl;

  const AppConfig({
    required this.appName,
    required this.flavor,
    required this.equranBaseUrl,
    required this.muslimApiBaseUrl,
    required this.aladhanBaseUrl,
    required this.muslimDailyBaseUrl,
  });

  static late AppConfig instance;

  static void initialize(AppConfig config) {
    instance = config;
  }

  /// ✅ Ambil config dari .env
  static Future<AppConfig> fromEnv({
    required String flavor,
    required String appName,
  }) async {
    await dotenv.load(fileName: '.env');

    return AppConfig(
      appName: appName,
      flavor: flavor,
      equranBaseUrl: dotenv.env['EQURAN_BASE_URL'] ?? '',
      muslimApiBaseUrl: dotenv.env['MUSLIM_API_BASE_URL'] ?? '',
      aladhanBaseUrl: dotenv.env['ALADHAN_BASE_URL'] ?? '',
      muslimDailyBaseUrl: dotenv.env['MUSLIM_DAILY_BASE_URL'] ?? '',
    );
  }
}
