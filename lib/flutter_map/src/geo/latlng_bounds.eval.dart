import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_map_eval/latlong2/src/LatLng.eval.dart';

/// dart_eval wrapper binding for [LatLngBounds]
class $LatLngBounds implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.',
      $LatLngBounds.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.worldSafe',
      $LatLngBounds.$worldSafe,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.unsafe',
      $LatLngBounds.$unsafe,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.fromPoints',
      $LatLngBounds.$fromPoints,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.minLatitude*g',
      $LatLngBounds.$minLatitude,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.maxLatitude*g',
      $LatLngBounds.$maxLatitude,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.minLongitude*g',
      $LatLngBounds.$minLongitude,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/geo/latlng_bounds.dart',
      'LatLngBounds.maxLongitude*g',
      $LatLngBounds.$maxLongitude,
    );
  }

  /// Compile-time type specification of [$LatLngBounds]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/geo/latlng_bounds.dart',
    'LatLngBounds',
  );

  /// Compile-time type declaration of [$LatLngBounds]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LatLngBounds]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'corner1',
              BridgeTypeAnnotation($LatLng.$type),
              false,
            ),

            BridgeParameter(
              'corner2',
              BridgeTypeAnnotation($LatLng.$type),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),

      'worldSafe': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'north',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'south',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'longitudeCenter',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'longitudeWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'unsafe': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'north',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'south',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'east',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'west',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'fromPoints': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'drawInSingleWorld',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'points',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation($LatLng.$type),
                ]),
              ),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'extend': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'latLng',
              BridgeTypeAnnotation($LatLng.$type),
              false,
            ),
          ],
        ),
      ),

      'extendBounds': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'bounds',
              BridgeTypeAnnotation($LatLngBounds.$type),
              false,
            ),
          ],
        ),
      ),

      'contains': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'point',
              BridgeTypeAnnotation($LatLng.$type),
              false,
            ),
          ],
        ),
      ),

      'containsBounds': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'other',
              BridgeTypeAnnotation($LatLngBounds.$type),
              false,
            ),
          ],
        ),
      ),

      'isOverlapping': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'other',
              BridgeTypeAnnotation($LatLngBounds.$type),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {
      'southWest': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [],
        ),
      ),

      'northEast': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [],
        ),
      ),

      'northWest': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [],
        ),
      ),

      'southEast': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [],
        ),
      ),

      'center': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [],
        ),
      ),

      'simpleCenter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($LatLng.$type),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {
      'minLatitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: true,
      ),

      'maxLatitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: true,
      ),

      'minLongitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: true,
      ),

      'maxLongitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: true,
      ),

      'north': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'south': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'east': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'west': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'longitudeCenter': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'longitudeWidth': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LatLngBounds.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LatLngBounds.wrap(LatLngBounds(args[0]!.$value, args[1]!.$value));
  }

  /// Wrapper for the [LatLngBounds.worldSafe] constructor
  static $Value? $worldSafe(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LatLngBounds.wrap(
      LatLngBounds.worldSafe(
        north: args[0]!.$value,
        south: args[1]!.$value,
        longitudeCenter: args[2]!.$value,
        longitudeWidth: args[3]!.$value,
      ),
    );
  }

  /// Wrapper for the [LatLngBounds.unsafe] constructor
  static $Value? $unsafe(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LatLngBounds.wrap(
      LatLngBounds.unsafe(
        north: args[0]!.$value,
        south: args[1]!.$value,
        east: args[2]!.$value,
        west: args[3]!.$value,
      ),
    );
  }

  /// Wrapper for the [LatLngBounds.fromPoints] constructor
  static $Value? $fromPoints(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LatLngBounds.wrap(
      LatLngBounds.fromPoints(
        (args[0]!.$reified as List).cast(),
        drawInSingleWorld: args[1]?.$value ?? false,
      ),
    );
  }

  /// Wrapper for the [LatLngBounds.minLatitude] getter
  static $Value? $minLatitude(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LatLngBounds.minLatitude;
    return $double(value);
  }

  /// Wrapper for the [LatLngBounds.maxLatitude] getter
  static $Value? $maxLatitude(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LatLngBounds.maxLatitude;
    return $double(value);
  }

  /// Wrapper for the [LatLngBounds.minLongitude] getter
  static $Value? $minLongitude(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LatLngBounds.minLongitude;
    return $double(value);
  }

  /// Wrapper for the [LatLngBounds.maxLongitude] getter
  static $Value? $maxLongitude(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LatLngBounds.maxLongitude;
    return $double(value);
  }

  final $Instance _superclass;

  @override
  final LatLngBounds $value;

  @override
  LatLngBounds get $reified => $value;

  /// Wrap a [LatLngBounds] in a [$LatLngBounds]
  $LatLngBounds.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'north':
        final _north = $value.north;
        return $double(_north);

      case 'south':
        final _south = $value.south;
        return $double(_south);

      case 'east':
        final _east = $value.east;
        return $double(_east);

      case 'west':
        final _west = $value.west;
        return $double(_west);

      case 'longitudeCenter':
        final _longitudeCenter = $value.longitudeCenter;
        return $double(_longitudeCenter);

      case 'longitudeWidth':
        final _longitudeWidth = $value.longitudeWidth;
        return $double(_longitudeWidth);

      case 'southWest':
        final _southWest = $value.southWest;
        return runtime.wrapAlways(_southWest);

      case 'northEast':
        final _northEast = $value.northEast;
        return runtime.wrapAlways(_northEast);

      case 'northWest':
        final _northWest = $value.northWest;
        return runtime.wrapAlways(_northWest);

      case 'southEast':
        final _southEast = $value.southEast;
        return runtime.wrapAlways(_southEast);

      case 'center':
        final _center = $value.center;
        return runtime.wrapAlways(_center);

      case 'simpleCenter':
        final _simpleCenter = $value.simpleCenter;
        return runtime.wrapAlways(_simpleCenter);
      case 'extend':
        return __extend;

      case 'extendBounds':
        return __extendBounds;

      case 'contains':
        return __contains;

      case 'containsBounds':
        return __containsBounds;

      case 'isOverlapping':
        return __isOverlapping;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __extend = $Function(_extend);
  static $Value? _extend(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $LatLngBounds;
    self.$value.extend(args[0]!.$value);
    return null;
  }

  static const $Function __extendBounds = $Function(_extendBounds);
  static $Value? _extendBounds(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $LatLngBounds;
    self.$value.extendBounds(args[0]!.$value);
    return null;
  }

  static const $Function __contains = $Function(_contains);
  static $Value? _contains(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $LatLngBounds;
    final result = self.$value.contains(args[0]!.$value);
    return $bool(result);
  }

  static const $Function __containsBounds = $Function(_containsBounds);
  static $Value? _containsBounds(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $LatLngBounds;
    final result = self.$value.containsBounds(args[0]!.$value);
    return $bool(result);
  }

  static const $Function __isOverlapping = $Function(_isOverlapping);
  static $Value? _isOverlapping(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $LatLngBounds;
    final result = self.$value.isOverlapping(args[0]!.$value);
    return $bool(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'north':
        $value.north = value.$value;
        return;

      case 'south':
        $value.south = value.$value;
        return;

      case 'east':
        $value.east = value.$value;
        return;

      case 'west':
        $value.west = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
