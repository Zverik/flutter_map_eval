import 'package:dart_eval/dart_eval_bridge.dart';
import 'src/logging.dart';

import 'src/level.eval.dart';
import 'src/log_record.eval.dart';
import 'src/logger.eval.dart';

export 'src/level.eval.dart';
export 'src/log_record.eval.dart';
export 'src/logger.eval.dart';

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
    registry.addExportedLibraryMapping('package:logging/src', 'package:logging');
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Level.configureForRuntime(runtime);
    $LogRecord.configureForRuntime(runtime);
    $Logger.configureForRuntime(runtime);
  }
}
