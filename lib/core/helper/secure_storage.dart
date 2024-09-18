import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static FlutterSecureStorage storage = FlutterSecureStorage(
      aOptions: _getAndroidOptions(), iOptions: _getIOSOptions());

  static Future<String?> readData({required String key}) async {
    return await storage.read(key: key);
  }
  static Future<void> saveData(
      {required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  static Future<void> delete({required String key}) async {
    await storage.delete(key: key);
  }

  static Future<void> deleteAll() async {
    await storage.deleteAll();
  }
}

AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
IOSOptions _getIOSOptions() =>
    const IOSOptions(accessibility: KeychainAccessibility.first_unlock);
