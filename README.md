# yaml_config

## How to use

```dart
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
```

## Flutter Asset

In `pubspec.yaml`

```yaml
flutter:
  assets:
    - config.yaml
```

```dart
import 'package:flutter/services.dart' show rootBundle;
import 'package:yaml_config/yaml_config.dart';

class FlutterConfiguration extends YamlConfig {
  String endpoint;

  @override
  void init() {
    endpoint = get('endpoint');
  }

  FlutterConfiguration(String text) : super(text);

  static Future<FlutterConfiguration> fromAsset(String asset) {
    return rootBundle.loadString(asset).then((text) => FlutterConfiguration(text));
  }
}
void main() async {
  FlutterConfiguration config = await FlutterConfiguration.fromAsset('config.yaml');
  print(config.endpoint);
}
```