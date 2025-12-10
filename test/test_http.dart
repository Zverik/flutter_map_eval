import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_map_eval/dart_pkgs_eval.dart' show HttpPlugin;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(HttpPlugin());
  });

  test('Simple get', () async {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:http/http.dart' as http;
        
        Future<int> main() async {
          final url = Uri.parse('http://localhost/');
          final response = await http.get(url);
          return response.statusCode;
        }
        ''',
      },
    });
    runtime.addPlugin(HttpPlugin());
    runtime.grant(NetworkPermission.url('http://localhost'));

    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(await (result as Future), $int(200));
  });

  test('Client post', () async {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:http/http.dart' as http;
        
        Future<int> main() async {
          final client = http.Client();
          final url = Uri.parse('http://localhost/');
          final request = http.Request('POST', url);
          request.body = 'test body';
          final response = await client.send(request);
          client.close();
          return response.statusCode;
        }
        ''',
      },
    });
    runtime.addPlugin(HttpPlugin());
    runtime.grant(NetworkPermission.url('http://localhost'));

    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(await (result as Future), $int(200));
  });
}
