import 'dart:async';

import 'package:flutter/services.dart';

class SquareConnect {
  static const MethodChannel _channel =
      const MethodChannel('square_connect');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
