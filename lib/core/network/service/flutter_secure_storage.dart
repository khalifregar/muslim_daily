import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static const _storage = FlutterSecureStorage();

  // Simpan token
  static Future<void> saveToken(String token) async {
    await _storage.write(key: 'token', value: token);
  }

  // Ambil token
  static Future<String?> getToken() async {
    return await _storage.read(key: 'token');
  }

  // Hapus token (misal saat logout)
  static Future<void> deleteToken() async {
    await _storage.delete(key: 'token');
  }
}
