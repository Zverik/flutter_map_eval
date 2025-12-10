import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/logging/src/logging.dart';

import 'src/level.eval.dart';
import 'src/log_record.eval.dart';
import 'src/logger.eval.dart';

/// [EvalPlugin] for logging
class LoggingPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:logging';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($Level.$declaration);
    registry.defineBridgeClass($LogRecord.$declaration);
    registry.defineBridgeClass($Logger.$declaration);
    registry.addSource(
      DartSource('package:logging/logging.dart', loggingSource),
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Level.configureForRuntime(runtime);
    $LogRecord.configureForRuntime(runtime);
    $Logger.configureForRuntime(runtime);
  }
}
