
import 'dart:async';

import 'package:flutter/services.dart';

class ChargebeeFlutterSdk {
  static const MethodChannel _channel = MethodChannel('chargebee_flutter_sdk');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
