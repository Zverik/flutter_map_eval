import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_map_eval/dart_pkgs_eval.dart' show LatLong2Plugin;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  late final Compiler compiler;

  setUpAll(() {
    compiler = Compiler();
    compiler.addPlugin(LatLong2Plugin());
  });

  test('LatLng', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:latlong2/latlong.dart' show LatLng;
        
        String main() {
          final ll = LatLng(12.5678, -55.1234);
          return ll.round(decimals: 2).toJson().toString();
        }
        '''
      }
    });
    runtime.addPlugin(LatLong2Plugin());

    expect(runtime.executeLib('package:example/main.dart', 'main'), $String('{coordinates: [-55.12, 12.57]}'));
  });

  test('Distance', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:latlong2/latlong.dart';
        
        String main() {
          final Distance distance = new Distance();
          final meter = distance.call(
            new LatLng(52.518611,13.408056),
            new LatLng(51.519475,7.46694444)
          );
          final km = distance.as(
            LengthUnit.Kilometer,
            LatLng(52.518611,13.408056),
            LatLng(51.519475,7.46694444)
          );
          return [meter, km].join(' ');
        }
        '''
      }
    });
    runtime.addPlugin(LatLong2Plugin());

    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(result, $String('422592.0 423.0'));
  });

  test('DistanceCalculator', () {
    final runtime = compiler.compileWriteAndLoad({
      'example': {
        'main.dart': '''
        import 'package:latlong2/latlong.dart';
        import 'dart:math' as math;
        
        class Equirectangular extends Haversine {
          const Equirectangular();

          @override
          double distance(LatLng p1, LatLng p2) {
            final f1 = p1.latitudeInRad;
            final f2 = p2.latitudeInRad;
            final x = (p2.longitudeInRad - p1.longitudeInRad) * math.cos((f1 + f2) / 2);
            final y = f2 - f1;
            return math.sqrt(x*x + y*y) * earthRadius;
          }
        }

        class DistanceEquirectangular extends Distance {
          const DistanceEquirectangular({super.roundResult = false})
            : super(calculator: const Equirectangular());
        }
        
        double main() {
          final Distance distance = new DistanceEquirectangular();
          return distance.call(
            new LatLng(52.518611,13.408056),
            new LatLng(51.519475,7.46694444)
          );
        }
        '''
      }
    });
    runtime.addPlugin(LatLong2Plugin());

    final result = runtime.executeLib('package:example/main.dart', 'main');
    expect(result, $double(422592.0));
  }, skip: true);
}