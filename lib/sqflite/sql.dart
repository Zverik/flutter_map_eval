import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:sqflite/sqflite.dart';

class $ConflictAlgorithm implements $Instance {
  static const $type = BridgeTypeRef(
    BridgeTypeSpec('package:sqflite/sqflite.dart', 'ConflictAlgorithm'),
  );

  static const $declaration = BridgeEnumDef(
    $type,
    values: ['rollback', 'abort', 'fail', 'ignore', 'replace'],
  );

  static final $values = ConflictAlgorithm.values.asNameMap().map(
    (k, v) => MapEntry(k, $ConflictAlgorithm.wrap(v)),
  );

  const $ConflictAlgorithm.wrap(this.$value);

  @override
  final ConflictAlgorithm $value;

  @override
  ConflictAlgorithm get $reified => $value;

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
