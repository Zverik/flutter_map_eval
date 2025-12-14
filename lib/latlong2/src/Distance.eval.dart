import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:latlong2/latlong.dart';

import 'LengthUnit.eval.dart';
import 'interfaces.eval.dart';
import 'LatLng.eval.dart';

/// dart_eval wrapper binding for [Distance]
class $Distance implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'Distance.',
      $Distance.$new,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'Distance.withRadius',
      $Distance.$withRadius,
    );
  }

  /// Compile-time type specification of [$Distance]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong.dart',
    'Distance',
  );

  /// Compile-time type declaration of [$Distance]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Distance]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $implements: [$DistanceCalculator$bridge.$type]),

    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'roundResult',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'calculator',
              BridgeTypeAnnotation($DistanceCalculator$bridge.$type),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'withRadius': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'roundResult',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'calculator',
              BridgeTypeAnnotation($DistanceCalculator$bridge.$type),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'call': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter('p1', BridgeTypeAnnotation($LatLng.$type), false),
            BridgeParameter('p2', BridgeTypeAnnotation($LatLng.$type), false),
          ],
        ),
      ),

      'as': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'unit',
              BridgeTypeAnnotation($LengthUnit.$type),
              false,
            ),

            BridgeParameter('p1', BridgeTypeAnnotation($LatLng.$type), false),

            BridgeParameter('p2', BridgeTypeAnnotation($LatLng.$type), false),
          ],
        ),
      ),

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

      'bearing': BridgeMethodDef(
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
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, [])),
              false,
            ),

            BridgeParameter(
              'bearing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, [])),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {
      'radius': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'calculator': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($DistanceCalculator$bridge.$type),
          namedParams: [],
          params: [],
        ),
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Distance.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Distance.wrap(
      Distance(
        roundResult: args[0]?.$value ?? true,
        calculator: args[1]?.$value ?? const Vincenty(),
      ),
    );
  }

  /// Wrapper for the [Distance.withRadius] constructor
  static $Value? $withRadius(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $Distance.wrap(
      Distance.withRadius(
        args[0]!.$value,
        roundResult: args[1]?.$value ?? true,
        calculator: args[2]?.$value ?? const Vincenty(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final Distance $value;

  @override
  Distance get $reified => $value;

  /// Wrap a [Distance] in a [$Distance]
  $Distance.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'radius':
        return $double($value.radius);

      case 'calculator':
        return $DistanceCalculator.wrap($value.calculator);
      case 'call':
        return __call;

      case 'as':
        return __as;

      case 'distance':
        return __distance;

      case 'bearing':
        return __bearing;

      case 'offset':
        return __offset;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __call = $Function(_call);
  static $Value? _call(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Distance;
    final result = self.$value.call(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  static const $Function __as = $Function(_as);
  static $Value? _as(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Distance;
    final result = self.$value.as(
      args[0]!.$value,
      args[1]!.$value,
      args[2]!.$value,
    );
    return $double(result);
  }

  static const $Function __distance = $Function(_distance);
  static $Value? _distance(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Distance;
    final result = self.$value.distance(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  static const $Function __bearing = $Function(_bearing);
  static $Value? _bearing(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Distance;
    final result = self.$value.bearing(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  static const $Function __offset = $Function(_offset);
  static $Value? _offset(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Distance;
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

/// dart_eval wrapper binding for [DistanceVincenty]
class $DistanceVincenty implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'DistanceVincenty.',
      $DistanceVincenty.$new,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'DistanceVincenty.withRadius',
      $DistanceVincenty.$withRadius,
    );
  }

  /// Compile-time type specification of [$DistanceVincenty]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong.dart',
    'DistanceVincenty',
  );

  /// Compile-time type declaration of [$DistanceVincenty]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$DistanceVincenty]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $Distance.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'roundResult',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'withRadius': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'roundResult',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [DistanceVincenty.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $DistanceVincenty.wrap(
      DistanceVincenty(roundResult: args[0]?.$value ?? true),
    );
  }

  /// Wrapper for the [DistanceVincenty.withRadius] constructor
  static $Value? $withRadius(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $DistanceVincenty.wrap(
      DistanceVincenty.withRadius(
        args[0]!.$value,
        roundResult: args[1]?.$value ?? true,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final DistanceVincenty $value;

  @override
  DistanceVincenty get $reified => $value;

  /// Wrap a [DistanceVincenty] in a [$DistanceVincenty]
  /// TODO: doesn't feel right.
  $DistanceVincenty.wrap(this.$value) : _superclass = $Distance.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [DistanceHaversine]
class $DistanceHaversine implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'DistanceHaversine.',
      $DistanceHaversine.$new,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong.dart',
      'DistanceHaversine.withRadius',
      $DistanceHaversine.$withRadius,
    );
  }

  /// Compile-time type specification of [$DistanceHaversine]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong.dart',
    'DistanceHaversine',
  );

  /// Compile-time type declaration of [$DistanceHaversine]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$DistanceHaversine]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $Distance.$type),

    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'roundResult',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'withRadius': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'roundResult',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [DistanceHaversine.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $DistanceHaversine.wrap(
      DistanceHaversine(roundResult: args[0]?.$value ?? true),
    );
  }

  /// Wrapper for the [DistanceHaversine.withRadius] constructor
  static $Value? $withRadius(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $DistanceHaversine.wrap(
      DistanceHaversine.withRadius(
        args[0]!.$value,
        roundResult: args[1]?.$value ?? true,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final DistanceHaversine $value;

  @override
  DistanceHaversine get $reified => $value;

  /// Wrap a [DistanceHaversine] in a [$DistanceHaversine]
  /// TODO: doesn't feel right.
  $DistanceHaversine.wrap(this.$value) : _superclass = $Distance.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
