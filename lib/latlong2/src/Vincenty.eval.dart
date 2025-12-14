import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:latlong2/latlong.dart';

import 'LatLng.eval.dart';
import 'interfaces.eval.dart';

/// dart_eval wrapper binding for [Vincenty]
class $Vincenty implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'Vincenty.',
      $Vincenty.$new,
    );
  }

  /// Compile-time type specification of [$Vincenty]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong.dart',
    'Vincenty',
  );

  /// Compile-time type declaration of [$Vincenty]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Vincenty]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $implements: [$DistanceCalculator$bridge.$type]),

    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'distance': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter('p1', BridgeTypeAnnotation($LatLng.$type), false),
            BridgeParameter('p2', BridgeTypeAnnotation($LatLng.$type), false),
          ],
        ),
      ),

      'offset': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [
            BridgeParameter('from', BridgeTypeAnnotation($LatLng.$type), false),

            BridgeParameter(
              'distanceInMeter',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'bearing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Vincenty.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Vincenty.wrap(Vincenty());
  }

  final $Instance _superclass;

  @override
  final Vincenty $value;

  @override
  Vincenty get $reified => $value;

  /// Wrap a [Vincenty] in a [$Vincenty]
  $Vincenty.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'distance':
        return __distance;

      case 'offset':
        return __offset;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __distance = $Function(_distance);
  static $Value? _distance(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Vincenty;
    final result = self.$value.distance(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  static const $Function __offset = $Function(_offset);
  static $Value? _offset(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Vincenty;
    final result = self.$value.offset(
      args[0]!.$value,
      args[1]!.$value,
      args[2]!.$value,
    );
    return $LatLng.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
