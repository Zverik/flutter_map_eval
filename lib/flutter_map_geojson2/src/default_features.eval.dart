import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/ui.dart';
import 'package:flutter_map_geojson2/flutter_map_geojson2.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [GeoJsonStyleDefaults]
class $GeoJsonStyleDefaults implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/default_features.dart',
      'GeoJsonStyleDefaults.',
      $GeoJsonStyleDefaults.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/default_features.dart',
      'GeoJsonStyleDefaults.initial*g',
      $GeoJsonStyleDefaults.$initial,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/default_features.dart',
      'GeoJsonStyleDefaults.leaflet*g',
      $GeoJsonStyleDefaults.$leaflet,
    );
  }

  /// Compile-time type specification of [$GeoJsonStyleDefaults]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/default_features.dart',
    'GeoJsonStyleDefaults',
  );

  /// Compile-time type declaration of [$GeoJsonStyleDefaults]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$GeoJsonStyleDefaults]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'markerColor',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
              ),
              true,
            ),

            BridgeParameter(
              'markerSize',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              true,
            ),

            BridgeParameter(
              'strokeColor',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
              ),
              true,
            ),

            BridgeParameter(
              'strokeOpacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'strokeWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'fillColor',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
              ),
              true,
            ),

            BridgeParameter(
              'fillOpacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'markerColor': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
        ),
        isStatic: false,
      ),

      'markerSize': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'strokeColor': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
        ),
        isStatic: false,
      ),

      'strokeOpacity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'strokeWidth': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'fillColor': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
        ),
        isStatic: false,
      ),

      'fillOpacity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'initial': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map_geojson2/geojson2/default_features.dart',
              'GeoJsonStyleDefaults',
            ),
            [],
          ),
        ),
        isStatic: true,
      ),

      'leaflet': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map_geojson2/geojson2/default_features.dart',
              'GeoJsonStyleDefaults',
            ),
            [],
          ),
        ),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [GeoJsonStyleDefaults.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $GeoJsonStyleDefaults.wrap(
      GeoJsonStyleDefaults(
        markerColor: args[0]?.$value ?? const Color(0xff7e7e7e),
        markerSize: args[1]?.$value ?? 'medium',
        strokeColor: args[2]?.$value ?? const Color(0xff555555),
        strokeOpacity: args[3]?.$value ?? 1.0,
        strokeWidth: args[4]?.$value ?? 2.0,
        fillColor: args[5]?.$value ?? const Color(0xff555555),
        fillOpacity: args[6]?.$value ?? 0.6,
      ),
    );
  }

  /// Wrapper for the [GeoJsonStyleDefaults.initial] getter
  static $Value? $initial(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = GeoJsonStyleDefaults.initial;
    return $GeoJsonStyleDefaults.wrap(value);
  }

  /// Wrapper for the [GeoJsonStyleDefaults.leaflet] getter
  static $Value? $leaflet(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = GeoJsonStyleDefaults.leaflet;
    return $GeoJsonStyleDefaults.wrap(value);
  }

  final $Instance _superclass;

  @override
  final GeoJsonStyleDefaults $value;

  @override
  GeoJsonStyleDefaults get $reified => $value;

  /// Wrap a [GeoJsonStyleDefaults] in a [$GeoJsonStyleDefaults]
  $GeoJsonStyleDefaults.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'markerColor':
        return $Color.wrap($value.markerColor);

      case 'markerSize':
        return $String($value.markerSize);

      case 'strokeColor':
        return $Color.wrap($value.strokeColor);

      case 'strokeOpacity':
        return $double($value.strokeOpacity);

      case 'strokeWidth':
        return $double($value.strokeWidth);

      case 'fillColor':
        return $Color.wrap($value.fillColor);

      case 'fillOpacity':
        return $double($value.fillOpacity);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
