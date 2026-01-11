import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/flutter_map_geojson2/src/geojson.dart';
import 'src/default_features.eval.dart';
import 'src/geojson_layer.eval.dart';
import 'src/geojson_provider.eval.dart';

/// [EvalPlugin] for flutter_map_geojson2
class FlutterMapGeojsonPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:flutter_map_geojson2';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($GeoJsonStyleDefaults.$declaration);
    registry.defineBridgeClass($GeoJsonLayer.$declaration);
    registry.defineBridgeClass($NotAGeoJson.$declaration);
    registry.defineBridgeClass($GeoJsonLoadException.$declaration);
    registry.defineBridgeClass($GeoJsonProvider.$declaration);
    registry.defineBridgeClass($MemoryGeoJson.$declaration);
    registry.defineBridgeClass($FileGeoJson.$declaration);
    registry.defineBridgeClass($NetworkGeoJson.$declaration);
    registry.addSource(
      DartSource(
        'package:flutter_map_geojson2/flutter_map_geojson2.dart',
        flutterMapGeojsonSource,
      ),
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $GeoJsonStyleDefaults.configureForRuntime(runtime);
    $GeoJsonLayer.configureForRuntime(runtime);
    $NotAGeoJson.configureForRuntime(runtime);
    $GeoJsonLoadException.configureForRuntime(runtime);
    $GeoJsonProvider.configureForRuntime(runtime);
    $MemoryGeoJson.configureForRuntime(runtime);
    $FileGeoJson.configureForRuntime(runtime);
    $NetworkGeoJson.configureForRuntime(runtime);
  }
}
