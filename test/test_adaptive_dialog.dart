import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:flutter_map_eval/flutter_map_eval.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(AdaptiveDialogPlugin());
    compiler.addPlugin(flutterEvalPlugin);
  });

  test('Trying to show a dialog', () async {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:adaptive_dialog/adaptive_dialog.dart';
        
        Future<bool> main() async {
          return false; // TODO
        }
        ''',
      },
    });
    // TODO: for now this does not test anything!
    runtime.addPlugin(AdaptiveDialogPlugin());
    runtime.addPlugin(flutterEvalPlugin);

    TestWidgetsFlutterBinding.ensureInitialized();
    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(await result, $bool(false));
  });
}
