import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:square_connect/square_connect.dart';

void main() {
  const MethodChannel channel = MethodChannel('square_connect');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SquareConnect.platformVersion, '42');
  });
}
