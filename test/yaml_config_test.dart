import 'package:test/test.dart';

import 'package:yaml_config/yaml_config.dart';

void main() {
  YamlConfig config = YamlConfig("""
  foo: baz
  success: true
  error: false
  int: 12
  double: 1.2
  """);
  test('getters', () {
    expect(config.getString("foo"), equals("baz"));
    expect(config.getBool("success"), equals(true));
    expect(config.getBool("error"), equals(false));
    expect(config.getInt("int"), equals(12));
    expect(config.getDouble("double"), equals(1.2));
  });
}