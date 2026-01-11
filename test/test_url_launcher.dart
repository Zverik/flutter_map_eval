import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:flutter_map_eval/flutter_map_eval.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(UrlLauncherPlugin());
    compiler.addPlugin(flutterEvalPlugin);
  });

  test('Url launcher detect mode', () async {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:url_launcher/url_launcher.dart';
        
        Future<bool> main() async {
          return supportsLaunchMode(LaunchMode.inAppWebView);
        }
        ''',
      },
    });
    runtime.addPlugin(UrlLauncherPlugin());
    runtime.addPlugin(flutterEvalPlugin);

    TestWidgetsFlutterBinding.ensureInitialized();
    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(await result, $bool(false));
  });
}