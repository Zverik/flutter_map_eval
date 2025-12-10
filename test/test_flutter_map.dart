import 'package:dart_eval/dart_eval.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:flutter_map_eval/dart_pkgs_eval.dart';
import 'package:flutter_map_eval/flutter_map/flutter_map_eval.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(LatLong2Plugin());
    compiler.addPlugin(FlutterMapPlugin());
    compiler.addPlugin(flutterEvalPlugin);
  });

  test('LatLngBounds', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:flutter_map/flutter_map.dart' show LatLngBounds;
        import 'package:latlong2/latlong.dart' show LatLng;
        
        bool main() {
          final bounds = LatLngBounds(
            LatLng(10.0, 11.0), LatLng(22.0, 54.0)
          );
          return bounds.contains(LatLng(11.0, 15.0));
        }
        ''',
      },
    });
    runtime.addPlugin(FlutterMapPlugin());
    runtime.addPlugin(LatLong2Plugin());
    runtime.addPlugin(flutterEvalPlugin);

    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(result, true);
  });

  test('LatLngBounds.fromPoints', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:flutter_map/flutter_map.dart' show LatLngBounds;
        import 'package:latlong2/latlong.dart' show LatLng;
        
        bool main() {
          final bounds = LatLngBounds.fromPoints([
            LatLng(10.0, 11.0), LatLng(22.0, 54.0)
          ]);
          return bounds.contains(LatLng(11.0, 15.0));
        }
        ''',
      },
    });
    runtime.addPlugin(FlutterMapPlugin());
    runtime.addPlugin(LatLong2Plugin());
    runtime.addPlugin(flutterEvalPlugin);

    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(result, true);
  }, skip: true);
}