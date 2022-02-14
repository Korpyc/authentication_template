import 'dart:async';

import 'package:get_it/get_it.dart';

import 'package:authentication_template/services/network_checker.dart';
import 'package:authentication_template/services/secure_storage_service.dart';

import '../user_data_storage_service.dart';

final getIt = GetIt.instance;

Future<void> initializeInjection() async {
  // Network checker
  getIt.registerLazySingleton<NetworkChecker>(() => INetworkChecker());

  // Secure storage
  getIt.registerSingleton<SecureStorageService>(ISecureStorageService());

  // register user data provider from local storage
  getIt.registerSingleton<UserDataStorageService>(
    UserDataStorageService(getIt()),
  );
}
