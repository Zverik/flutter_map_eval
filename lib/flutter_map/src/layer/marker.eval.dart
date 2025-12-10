import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/painting.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/foundation.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:flutter_map/flutter_map.dart' show Marker;
import 'package:flutter_map_eval/latlong2/src/LatLng.eval.dart';

/// dart_eval wrapper binding for [Marker]
class $Marker implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
      'Marker.',
      $Marker.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
      'Marker.computePixelAlignment',
      $Marker.$computePixelAlignment,
    );
  }

  /// Compile-time type specification of [$Marker]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
    'Marker',
  );

  /// Compile-time type declaration of [$Marker]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Marker]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation($Key.$type, nullable: true),
              true,
            ),

            BridgeParameter(
              'point',
              BridgeTypeAnnotation($LatLng.$type),
              false,
            ),

            BridgeParameter(
              'child',
              BridgeTypeAnnotation($Widget.$type),
              false,
            ),

            BridgeParameter(
              'width',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'height',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'alignment',
              BridgeTypeAnnotation($Alignment.$type, nullable: true),
              true,
            ),

            BridgeParameter(
              'rotate',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'computePixelAlignment': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($Alignment.$type),
          namedParams: [
            BridgeParameter(
              'width',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'height',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'left',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'top',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
          params: [],
        ),
        isStatic: true,
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'key': BridgeFieldDef(
        BridgeTypeAnnotation($Key.$type, nullable: true),
        isStatic: false,
      ),

      'point': BridgeFieldDef(
        BridgeTypeAnnotation($LatLng.$type),
        isStatic: false,
      ),

      'child': BridgeFieldDef(
        BridgeTypeAnnotation($Widget.$type),
        isStatic: false,
      ),

      'width': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'height': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'alignment': BridgeFieldDef(
        BridgeTypeAnnotation($Alignment.$type, nullable: true),
        isStatic: false,
      ),

      'rotate': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Marker.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Marker.wrap(
      Marker(
        key: args[0]?.$value,
        point: args[1]!.$value,
        child: args[2]!.$value,
        width: args[3]?.$value ?? 30,
        height: args[4]?.$value ?? 30,
        alignment: args[5]?.$value,
        rotate: args[6]?.$value,
      ),
    );
  }

  /// Wrapper for the [Marker.computePixelAlignment] method
  static $Value? $computePixelAlignment(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = Marker.computePixelAlignment(
      width: args[0]!.$value,
      height: args[1]!.$value,
      left: args[2]!.$value,
      top: args[3]!.$value,
    );
    return $Alignment.wrap(value);
  }

  final $Instance _superclass;

  @override
  final Marker $value;

  @override
  Marker get $reified => $value;

  /// Wrap a [Marker] in a [$Marker]
  $Marker.wrap(this.$value) : _superclass = $Object($value);

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

      case 'child':
        final _child = $value.child;
        return $Widget.wrap(_child);

      case 'width':
        final _width = $value.width;
        return $double(_width);

      case 'height':
        final _height = $value.height;
        return $double(_height);

      case 'alignment':
        final _alignment = $value.alignment;
        return _alignment == null ? const $null() : $Alignment.wrap(_alignment);

      case 'rotate':
        final _rotate = $value.rotate;
        return _rotate == null ? const $null() : $bool(_rotate);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
