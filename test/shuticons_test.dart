import 'package:flutter_test/flutter_test.dart';
import 'package:shuticons/src/shuticon_data.dart';
import 'package:shuticons/src/shuticon_icons.dart';

void main() {
  test('Test that regular icons are generated', () {
    ShutIconsData icon = const ShutIconsData(0xe900);
    expect(icon.codePoint, 0xe900);
  });

  test('Test that light icons are generated', () {
    ShutIconsData icon = const ShutIconsData(0xe900);
    expect(icon.codePoint, 0xe900);
  });

  test('Test some icons', () {
    expect(Shuticon.Add.codePoint, 0xe93d);
  });

  test('Test that light icons are generated', () {
    ShutIconsData icon = const ShutIconsData(0xe900);
    expect(icon.codePoint, 0xe900);
  });

  test('Test icon family', () {
    expect(Shuticon.Add.fontFamily, 'Shuticon');
  });

  test('Test icon package name', () {
    expect(Shuticon.Figma.fontPackage, 'Shuticon');
  });
}
