import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:latlong2/latlong.dart';

/// dart_eval wrapper binding for [LatLng]
class $LatLng implements LatLng, $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LatLng.dart',
      'LatLng.',
      $LatLng.$new,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LatLng.dart',
      'LatLng.fromJson',
      $LatLng.$fromJson,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LatLng.dart',
      'LatLng.fromSexagesimal',
      $LatLng.$fromSexagesimal,
    );
  }

  /// Compile-time type specification of [$LatLng]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong/LatLng.dart',
    'LatLng',
  );

  /// Compile-time type declaration of [$LatLng]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LatLng]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'latitude',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'longitude',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'json',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'fromSexagesimal': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'str',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'toJson': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'toSexagesimal': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'round': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'decimals',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),
          ],
          params: [],
        ),
      ),
    },
    getters: {
      'latitudeInRad': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'longitudeInRad': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {
      'latitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'longitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LatLng.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LatLng.wrap(LatLng(args[0]!.$value, args[1]!.$value));
  }

  /// Wrapper for the [LatLng.fromJson] constructor
  static $Value? $fromJson(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LatLng.wrap(LatLng.fromJson((args[0]!.$reified as Map).cast()));
  }

  /// Wrapper for the [LatLng.fromSexagesimal] constructor
  static $Value? $fromSexagesimal(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LatLng.wrap(LatLng.fromSexagesimal(args[0]!.$value));
  }

  final $Instance _superclass;

  @override
  final LatLng $value;

  @override
  LatLng get $reified => $value;

  /// Wrap a [LatLng] in a [$LatLng]
  $LatLng.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'latitude':
        return $double($value.latitude);

      case 'longitude':
        return $double($value.longitude);

      case 'latitudeInRad':
        return $double($value.latitudeInRad);

      case 'longitudeInRad':
        return $double($value.longitudeInRad);
      case 'toJson':
        return __toJson;

      case 'toSexagesimal':
        return __toSexagesimal;

      case 'round':
        return __round;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __toJson = $Function(_toJson);
  static $Value? _toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $LatLng;
    final result = self.$value.toJson();
    return $Map.wrap(result);
  }

  static const $Function __toSexagesimal = $Function(_toSexagesimal);
  static $Value? _toSexagesimal(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $LatLng;
    final result = self.$value.toSexagesimal();
    return $String(result);
  }

  static const $Function __round = $Function(_round);
  static $Value? _round(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $LatLng;
    final result = self.$value.round(decimals: args[0]?.$value ?? 6);
    return $LatLng.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  double get latitude => $value.latitude;

  @override
  double get latitudeInRad => $value.latitudeInRad;

  @override
  double get longitude => $value.longitude;

  @override
  double get longitudeInRad => $value.longitudeInRad;

  @override
  LatLng round({int decimals = 6}) => $value.round(decimals: decimals);

  @override
  Map<String, dynamic> toJson() => $value.toJson();

  @override
  String toSexagesimal() => $value.toSexagesimal();
}
