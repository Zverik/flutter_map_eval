import 'dart:convert';
import 'dart:io';

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/flutter_map_eval.dart';

void main() {
  // To properly generate the bindings, dart_eval needs Flutter context which is
  // delivered when running Dart programs via `flutter test`,
  // but isn't for Dart code ran via `dart run`.
  final serializer = BridgeSerializer();
  for (final plugin in plugins) {
    serializer.addPlugin(plugin);
  }
  final output = serializer.serialize();
  File('flutter_map_eval.json').writeAsStringSync(json.encode(output));
  // ignore: avoid_print
  print('SUCCESS: Bindings generated and written to flutter_map_eval.json\n');
}