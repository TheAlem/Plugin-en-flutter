
import 'package:flutter/services.dart';

class NativePlugin {
  static const MethodChannel _channel = const MethodChannel('native_plugin');

  static Future<String> getDeviceInfo() async {
    final String deviceInfo = await _channel.invokeMethod('getDeviceInfo');
    return deviceInfo;
  }
}
