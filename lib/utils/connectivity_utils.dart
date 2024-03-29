import 'package:connectivity_plus/connectivity_plus.dart';
/// 检查当前网络连接状态
enum ConnectivityState {
  mobile,
  ethernet,
  wifi,
  none
}

class ConnectivityUtils {
  /// 检查当前状态
  static Future<ConnectivityState> checkConnectivity() async {
    late ConnectivityState state;

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      /// Mobile: Device connected to cellular network
      state = ConnectivityState.mobile;
    } else if (connectivityResult == ConnectivityResult.ethernet) {
      /// Ethernet: Device connected to ethernet network
      state = ConnectivityState.ethernet;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      /// WiFi: Device connected via Wi-Fi
      state = ConnectivityState.wifi;
    } else if (connectivityResult == ConnectivityResult.none) {
      /// None: Device not connected to any network
      state = ConnectivityState.none;
    }
    return state;
  }
}