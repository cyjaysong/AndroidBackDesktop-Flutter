import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_back_desktop/android_back_desktop.dart';

void main() {
  const MethodChannel channel = MethodChannel('android_back_desktop');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AndroidBackDesktop.platformVersion, '42');
  });
}
