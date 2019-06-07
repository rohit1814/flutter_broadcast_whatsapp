import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_broadcast_whatsapp/flutter_broadcast_whatsapp.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_broadcast_whatsapp');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterBroadcastWhatsapp.platformVersion, '42');
  });
}
