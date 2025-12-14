import 'package:dart_eval/dart_eval_bridge.dart';

import 'src/LengthUnit.eval.dart';
import 'src/latlong.dart';
import 'src/Distance.eval.dart';
import 'src/Haversine.eval.dart';
import 'src/LatLng.eval.dart';
import 'src/Vincenty.eval.dart';
import 'src/interfaces.eval.dart';

export 'src/LengthUnit.eval.dart';
export 'src/Distance.eval.dart';
export 'src/Haversine.eval.dart';
export 'src/LatLng.eval.dart';
export 'src/Vincenty.eval.dart';
export 'src/interfaces.eval.dart';

class LatLong2Plugin implements EvalPlugin {
  @override
  String get identifier => 'package:latlong2';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($LatLng.$declaration);
    registry.defineBridgeClass($LengthUnit.$declaration);
    registry.defineBridgeClass($Distance.$declaration);
    registry.defineBridgeClass($DistanceVincenty.$declaration);
    registry.defineBridgeClass($DistanceHaversine.$declaration);
    registry.defineBridgeClass($Haversine.$declaration);
    registry.defineBridgeClass($Vincenty.$declaration);
    registry.defineBridgeClass($DistanceCalculator$bridge.$declaration);
    registry.defineBridgeClass($DistanceCalculator.$declaration);
    registry.addSource(
      DartSource('package:latlong2/latlong.dart', latlongSource),
    );
    registry.addExportedLibraryMapping('package:latlong2', 'package:latlong2');
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $Distance.configureForRuntime(runtime);
    $DistanceVincenty.configureForRuntime(runtime);
    $DistanceHaversine.configureForRuntime(runtime);
    $LengthUnit.configureForRuntime(runtime);
    $LatLng.configureForRuntime(runtime);
    $Haversine.configureForRuntime(runtime);
    $Vincenty.configureForRuntime(runtime);
    $DistanceCalculator$bridge.configureForRuntime(runtime);
    $DistanceCalculator.configureForRuntime(runtime);
  }
}
