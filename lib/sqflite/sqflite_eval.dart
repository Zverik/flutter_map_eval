import 'package:dart_eval/dart_eval_bridge.dart';
import 'src/functions.dart';
import 'src/sqflite_api.dart';

class SqflitePlugin implements EvalPlugin {
  @override
  String get identifier => 'package:sqflite';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($DatabaseExecutor.$declaration);
    registry.defineBridgeClass($Transaction.$declaration);
    registry.defineBridgeClass($Database.$declaration);
    registry.defineBridgeClass($Batch.$declaration);
    registry.defineBridgeClass($QueryCursor.$declaration);
    registry.defineBridgeEnum($ConflictAlgorithm.$declaration);
    configureFunctionsForCompile(registry);
    registry.addExportedLibraryMapping('package:sqflite', 'package:sqflite');
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $DatabaseExecutor.configureForRuntime(runtime);
    $Transaction.configureForRuntime(runtime);
    $Database.configureForRuntime(runtime);
    $Batch.configureForRuntime(runtime);
    $QueryCursor.configureForRuntime(runtime);
    $ConflictAlgorithm.configureForRuntime(runtime);
    configureFunctionsForRuntime(runtime);
  }
}
