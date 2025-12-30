import 'package:country_coder/country_coder.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_map_eval/country_coder/country_coder_eval.dart';
import 'package:test/test.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(CountryCoderPlugin());
  });

  test('Country coder', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:country_coder/country_coder.dart';
        
        List<bool> main() {
          final countries = CountryCoder.instance;
          countries.load();
          
          final result1 = countries.iso1A2Code(lon: -4.5, lat: 54.2);
          final result2 = countries.region(query: 'UK');
          final result3 = countries.isIn(query: 'DE', inside: 'EU');
          return [result1 == 'GB', result2.iso1A2 == 'GB', result3];
        }
        ''',
      },
    });
    runtime.addPlugin(CountryCoderPlugin());

    expect(runtime.executeLib('package:example/main.dart', 'main'), [
      $bool(true),
      $bool(true),
      $bool(true),
    ]);
  });
}
