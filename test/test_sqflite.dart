import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart' show $String;
import 'package:flutter_eval/flutter_eval.dart' show flutterEvalPlugin;
import 'package:flutter_map_eval/flutter_map_eval.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(SqflitePlugin());
    compiler.addPlugin(flutterEvalPlugin);
  });

  test('In-memory database', () async {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:sqflite/sqflite.dart';
        
        Future<String> main() async {
          final database = await openDatabase(
            ':memory:',
            version: 1,
            onCreate: (db, version) async {
              await db.execute('create table t (id integer, value text)');
            },
          );
          await database.insert('t', {'id': 1, 'value': 'test value'});
          final result = await database.query('t');
          return result.first['value'];
        }
        ''',
      },
    });
    runtime.addPlugin(SqflitePlugin());
    runtime.addPlugin(flutterEvalPlugin);

    TestWidgetsFlutterBinding.ensureInitialized();
    // TODO: what exactly goes here?
    sqflite.databaseFactory = sqflite.databaseFactory;
    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(await result, $String('test value'));
  }, skip: true);
}