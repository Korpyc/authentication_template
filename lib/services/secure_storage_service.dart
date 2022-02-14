import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorageService {
  Future<void> writeString({
    required final String key,
    required final String value,
  });
  Future<String?> readString(String key);
  Future<void> deleteValue(String key);
}

class ISecureStorageService implements SecureStorageService {
  final FlutterSecureStorage _storage;
  ISecureStorageService() : _storage = const FlutterSecureStorage();

  @override
  Future<String?> readString(String key) async {
    return await _storage.read(key: key);
  }

  @override
  Future<void> deleteValue(String key) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> writeString({
    required final String key,
    required final String value,
  }) async {
    await _storage.write(key: key, value: value);
  }
}
