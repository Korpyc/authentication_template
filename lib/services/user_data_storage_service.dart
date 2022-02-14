import 'dart:convert';

import 'package:authentication_template/data/user_profile.dart';
import 'package:authentication_template/services/secure_storage_service.dart';

class UserDataStorageService {
  final SecureStorageService _storage;
  UserDataStorageService(
    final SecureStorageService storage,
  ) : _storage = storage;

  Future<UserProfile?> readLocalUser() async {
    try {
      String? data = await _storage.readString(_authUserKey);
      if (data != null) {
        return UserProfile.fromJson(json.decode(data));
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> writeLocalUser(UserProfile profile) async {
    String data = json.encode(profile.toJson());
    await _storage.writeString(key: _authUserKey, value: data);
  }

  Future<void> clearLocalUser() async {
    await _storage.deleteValue(_authUserKey);
  }

  final String _authUserKey = "authentication_authorized_local_user_data_key";
}
