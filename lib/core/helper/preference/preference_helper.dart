import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveStringValue({required String key, required String value}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
}

Future<void> removeValue({required String key}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(key);
}
