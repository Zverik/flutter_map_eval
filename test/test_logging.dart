import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_map_eval/dart_pkgs_eval.dart' show LoggingPlugin;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(LoggingPlugin());
  });

  test('Logging', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:logging/logging.dart';
        
        String main() {
          final logger = Logger('DartEval');
          logger.info('All okay!');
          return logger.level.name;
        }
        '''
      }
    });
    runtime.addPlugin(LoggingPlugin());

    expect(runtime.executeLib('package:example/main.dart', 'main'),
        $String('INFO'));
  });
}