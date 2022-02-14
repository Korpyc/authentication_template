import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkChecker {
  /// status at that very moment
  bool get isConnected;

  /// stream for subscription on changes of connection status
  Stream<bool> get connectionStatus;

  void dispose();
}

/// Returns broadcast stream that allows to check for the network and show user
/// something to know their connection is down, also to add the condition for request
/// callbacks
class INetworkChecker implements NetworkChecker {
  StreamSubscription? _connectivitySubscription;
  StreamController<bool> _connectionStatusStreamController;

  bool _lastConnectionStatus = true;

  INetworkChecker()
      : _connectionStatusStreamController = StreamController.broadcast() {
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
      (event) {
        _lastConnectionStatus = event != ConnectivityResult.none;
        _connectionStatusStreamController.sink.add(_lastConnectionStatus);
      },
    );
  }
  @override
  bool get isConnected => _lastConnectionStatus;

  @override
  Stream<bool> get connectionStatus => _connectionStatusStreamController.stream;

  @override
  void dispose() {
    _connectionStatusStreamController.close();
    _connectivitySubscription?.cancel();
  }
}
