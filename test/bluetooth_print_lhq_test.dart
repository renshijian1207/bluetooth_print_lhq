import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bluetooth_print_lhq/bluetooth_print_lhq.dart';

void main() {
  const MethodChannel channel = MethodChannel('bluetooth_print_lhq');

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
    expect(await BluetoothPrintLhq.platformVersion, '42');
  });
}
