import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:latlong2/latlong.dart';

import 'LatLng.eval.dart';

/// dart_eval bridge binding for [DistanceCalculator]
class $DistanceCalculator$bridge extends DistanceCalculator
    with $Bridge<DistanceCalculator> {
  /// Forwarded constructor for [DistanceCalculator.new]
  $DistanceCalculator$bridge();

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$DistanceCalculator$bridge]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong.dart',
    'DistanceCalculator',
  );

  /// Compile-time type declaration of [$DistanceCalculator$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$DistanceCalculator]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
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
    wrap: false,
    bridge: true,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  double distance(LatLng p1, LatLng p2) =>
      $_invoke('distance', [$LatLng.wrap(p1), $LatLng.wrap(p2)]);

  @override
  LatLng offset(LatLng from, double distanceInMeter, double bearing) =>
      $_invoke('offset', [
        $LatLng.wrap(from),
        $double(distanceInMeter),
        $double(bearing),
      ]);
}

/// dart_eval wrapper binding for [DistanceCalculator]
class $DistanceCalculator implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$DistanceCalculator]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong.dart',
    'DistanceCalculator',
  );

  /// Compile-time type declaration of [$DistanceCalculator]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$DistanceCalculator]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type)),
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
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final DistanceCalculator $value;

  @override
  DistanceCalculator get $reified => $value;

  /// Wrap a [DistanceCalculator] in a [$DistanceCalculator]
  $DistanceCalculator.wrap(this.$value) : _superclass = $Object($value);

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
    final self = target! as $DistanceCalculator;
    final result = self.$value.distance(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  static const $Function __offset = $Function(_offset);
  static $Value? _offset(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DistanceCalculator;
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
