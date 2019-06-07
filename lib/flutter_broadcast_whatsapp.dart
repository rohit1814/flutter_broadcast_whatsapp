import 'dart:async';

import 'package:flutter/services.dart';

class FlutterBroadcastWhatsapp {

  String msg = "Hello Flutter";

  static const MethodChannel _channel =
      const MethodChannel('flutter_broadcast_whatsapp');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Null> sendBroadcastMessage(msg) async{
    await _channel.invokeMethod('sendBroadcastMessage', {'message': msg});
  }
}
