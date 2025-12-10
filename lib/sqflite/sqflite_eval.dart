import 'package:dart_eval/dart_eval_bridge.dart';
import 'sqflite_api.dart';
import 'sql.dart';

class SqfliteEval implements EvalPlugin {
  @override
  String get identifier => 'package:sqflite';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    final classes = [$Database.$declaration];

    for (final cls in classes) {
      registry.defineBridgeClass(cls);
    }

    registry.defineBridgeEnum($ConflictAlgorithm.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      $ConflictAlgorithm.$type.spec!.library,
      $ConflictAlgorithm.$type.spec!.name,
      $ConflictAlgorithm.$values,
    );
  }
}
