import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/routes/app.dart';
import 'package:muslim_daily/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env'); // ⬅️ load .env lu di awal

  final config = AppConfig(
    appName: 'Muslim Daily',
    flavor: 'production',
    equranBaseUrl: 'https://equran.id/api',
    muslimApiBaseUrl: 'https://muslim-api-three.vercel.app',
    aladhanBaseUrl: 'https://api.aladhan.com',
    muslimDailyBaseUrl: dotenv.env['MUSLIM_DAILY_API_BASE_URL'] ?? '',
  );

  AppConfig.initialize(config);
  await setupLocator();

  runApp(const MuslimDaily());
}
