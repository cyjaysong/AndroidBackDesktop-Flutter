import 'dart:async';

import 'package:flutter/services.dart';

class AndroidBackDesktop {
  static const String _methodChannelName = "fun.cyjay.android_back_desktop/methodChannel";
  static const MethodChannel _channel = const MethodChannel(_methodChannelName);

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> backToDesktop() async {
    final bool result = await _channel.invokeMethod('backToDesktop');
    return result;
  }
}
