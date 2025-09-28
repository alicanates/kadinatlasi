import 'package:connectivity_plus/connectivity_plus.dart';
import '../../app_config/logger.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<bool> get connectionStream;
  Future<ConnectivityResult> get connectivityResult;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity = Connectivity();
  
  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    final connected = result != ConnectivityResult.none;
    Logger.d('Network status: ${connected ? 'Connected' : 'Disconnected'} ($result)', 'NETWORK');
    return connected;
  }
  
  @override
  Stream<bool> get connectionStream {
    return _connectivity.onConnectivityChanged.map((result) {
      final connected = result != ConnectivityResult.none;
      Logger.d('Network status changed: ${connected ? 'Connected' : 'Disconnected'} ($result)', 'NETWORK');
      return connected;
    });
  }
  
  @override
  Future<ConnectivityResult> get connectivityResult {
    return _connectivity.checkConnectivity();
  }
}
