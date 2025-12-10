// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ui' show Color;

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/ui.dart';
import 'package:flutter_map/flutter_map.dart' show CircleMarker;
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/foundation.dart';
import 'package:flutter_map_eval/latlong2/src/LatLng.eval.dart';

/// dart_eval wrapper binding for [CircleMarker]
class $CircleMarker implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/circle_layer/circle_marker.dart',
      'CircleMarker.',
      $CircleMarker.$new,
    );
  }

  /// Compile-time type specification of [$CircleMarker]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/circle_layer/circle_marker.dart',
    'CircleMarker',
  );

  /// Compile-time type declaration of [$CircleMarker]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CircleMarker]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      generics: {
        'R': BridgeGenericParam($extends: BridgeTypeRef(CoreTypes.object, [])),
      },
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'point',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'key',
              BridgeTypeAnnotation($Key.$type, nullable: true),
              true,
            ),

            BridgeParameter(
              'useRadiusInMeter',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter('color', BridgeTypeAnnotation($Color.$type), true),

            BridgeParameter(
              'borderStrokeWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'borderColor',
              BridgeTypeAnnotation($Color.$type),
              true,
            ),

            BridgeParameter(
              'hitValue',
              BridgeTypeAnnotation(BridgeTypeRef.ref('R'), nullable: true),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    fields: {
      'key': BridgeFieldDef(
        BridgeTypeAnnotation($Key.$type, nullable: true),
        isStatic: false,
      ),

      'point': BridgeFieldDef(
        BridgeTypeAnnotation($LatLng.$type),
        isStatic: false,
      ),

      'radius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'color': BridgeFieldDef(
        BridgeTypeAnnotation($Color.$type),
        isStatic: false,
      ),

      'borderStrokeWidth': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'borderColor': BridgeFieldDef(
        BridgeTypeAnnotation($Color.$type),
        isStatic: false,
      ),

      'useRadiusInMeter': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'hitValue': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef.ref('R'), nullable: true),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [CircleMarker.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $CircleMarker.wrap(
      CircleMarker(
        point: args[0]!.$value,
        radius: args[1]!.$value,
        key: args[2]?.$value,
        useRadiusInMeter: args[3]?.$value ?? false,
        color: args[4]?.$value ?? const Color(0xFF00FF00),
        borderStrokeWidth: args[5]?.$value ?? 0.0,
        borderColor: args[6]?.$value ?? const Color(0xFFFFFF00),
        hitValue: args[7]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final CircleMarker $value;

  @override
  CircleMarker get $reified => $value;

  /// Wrap a [CircleMarker] in a [$CircleMarker]
  $CircleMarker.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'key':
        final _key = $value.key;
        return _key == null ? const $null() : $Key.wrap(_key);

      case 'point':
        final _point = $value.point;
        return runtime.wrapAlways(_point);

      case 'radius':
        final _radius = $value.radius;
        return $double(_radius);

      case 'color':
        final _color = $value.color;
        return $Color.wrap(_color);

      case 'borderStrokeWidth':
        final _borderStrokeWidth = $value.borderStrokeWidth;
        return $double(_borderStrokeWidth);

      case 'borderColor':
        final _borderColor = $value.borderColor;
        return $Color.wrap(_borderColor);

      case 'useRadiusInMeter':
        final _useRadiusInMeter = $value.useRadiusInMeter;
        return $bool(_useRadiusInMeter);

      case 'hitValue':
        final _hitValue = $value.hitValue;
        return _hitValue == null ? const $null() : $Object(_hitValue);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
