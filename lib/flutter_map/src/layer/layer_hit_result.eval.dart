import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/ui.dart';
import 'package:flutter_map/flutter_map.dart' show LayerHitResult;
import 'package:flutter_map_eval/latlong2/src/LatLng.eval.dart';

/// dart_eval wrapper binding for [LayerHitResult]
class $LayerHitResult implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$LayerHitResult]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/shared/layer_interactivity/layer_hit_result.dart',
    'LayerHitResult',
  );

  /// Compile-time type declaration of [$LayerHitResult]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LayerHitResult]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      generics: {
        'R': BridgeGenericParam($extends: BridgeTypeRef(CoreTypes.object, [])),
      },
    ),
    constructors: {},
    fields: {
      'hitValues': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef.ref('R')),
          ]),
        ),
        isStatic: false,
      ),

      'coordinate': BridgeFieldDef(
        BridgeTypeAnnotation($LatLng.$type),
        isStatic: false,
      ),

      'point': BridgeFieldDef(
        BridgeTypeAnnotation($Offset.$type),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final LayerHitResult $value;

  @override
  LayerHitResult get $reified => $value;

  /// Wrap a [LayerHitResult] in a [$LayerHitResult]
  $LayerHitResult.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'hitValues':
        return $List.view($value.hitValues, (e) => $Object(e));

      case 'coordinate':
        return runtime.wrapAlways($value.coordinate);

      case 'point':
        return $Offset.wrap($value.point);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
