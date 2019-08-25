import 'dart:io';
import 'package:yaml_config/yaml_config.dart';

void main() async {
  YamlConfig config = await YamlConfig.fromFile(new File('/path/to/file'));
  String foo = config.getString('foo');
  print(foo);
  int baz = config.getInt('baz');
  print(baz);
  bool bar = config.getBool('bar');
  print(bar);
}