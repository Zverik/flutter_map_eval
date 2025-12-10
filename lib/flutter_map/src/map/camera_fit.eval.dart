import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/src/painting/edge_insets.dart';

import 'camera.eval.dart';
import '../geo/latlng_bounds.eval.dart';

/// dart_eval wrapper binding for [CameraFit]
class $CameraFit implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_fit.dart',
      'CameraFit.bounds',
      $CameraFit.$bounds,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_fit.dart',
      'CameraFit.insideBounds',
      $CameraFit.$insideBounds,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_fit.dart',
      'CameraFit.coordinates',
      $CameraFit.$coordinates,
    );
  }

  /// Compile-time type specification of [$CameraFit]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_fit.dart',
    'CameraFit',
  );

  /// Compile-time type declaration of [$CameraFit]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CameraFit]
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

      'bounds': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'bounds',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/geo/latlng_bounds.dart',
                    'LatLngBounds',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'forceIntegerZoomLevel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: true,
      ),

      'insideBounds': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'bounds',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/geo/latlng_bounds.dart',
                    'LatLngBounds',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'forceIntegerZoomLevel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: true,
      ),

      'coordinates': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'coordinates',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'forceIntegerZoomLevel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'fit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
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

  /// Wrapper for the [CameraFit.bounds] constructor
  static $Value? $bounds(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraFit.wrap(
      CameraFit.bounds(
        bounds: args[0]!.$value,
        padding: args[1]?.$value,
        maxZoom: args[2]?.$value,
        minZoom: args[3]?.$value,
        forceIntegerZoomLevel: args[4]?.$value,
      ),
    );
  }

  /// Wrapper for the [CameraFit.insideBounds] constructor
  static $Value? $insideBounds(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraFit.wrap(
      CameraFit.insideBounds(
        bounds: args[0]!.$value,
        padding: args[1]?.$value,
        maxZoom: args[2]?.$value,
        minZoom: args[3]?.$value,
        forceIntegerZoomLevel: args[4]?.$value,
      ),
    );
  }

  /// Wrapper for the [CameraFit.coordinates] constructor
  static $Value? $coordinates(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraFit.wrap(
      CameraFit.coordinates(
        coordinates: (args[0]!.$reified as List).cast(),
        padding: args[1]?.$value,
        maxZoom: args[2]?.$value,
        minZoom: args[3]?.$value,
        forceIntegerZoomLevel: args[4]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final CameraFit $value;

  @override
  CameraFit get $reified => $value;

  /// Wrap a [CameraFit] in a [$CameraFit]
  $CameraFit.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'fit':
        return __fit;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __fit = $Function(_fit);
  static $Value? _fit(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CameraFit;
    final result = self.$value.fit(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FitBounds]
class $FitBounds implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$FitBounds]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_fit.dart',
    'FitBounds',
  );

  /// Compile-time type declaration of [$FitBounds]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FitBounds]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/map/camera/camera_fit.dart',
          'CameraFit',
        ),
        [],
      ),
    ),
    constructors: {
      '_': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'bounds',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/geo/latlng_bounds.dart',
                    'LatLngBounds',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'forceIntegerZoomLevel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'fit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      '_getBoundsZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'pixelPadding',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'bounds': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/geo/latlng_bounds.dart',
              'LatLngBounds',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'padding': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/painting/edge_insets.dart',
              'EdgeInsets',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'maxZoom': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'minZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'forceIntegerZoomLevel': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final FitBounds $value;

  @override
  FitBounds get $reified => $value;

  /// Wrap a [FitBounds] in a [$FitBounds]
  $FitBounds.wrap(this.$value) : _superclass = $CameraFit.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bounds':
        final _bounds = $value.bounds;
        return $LatLngBounds.wrap(_bounds);

      case 'padding':
        final _padding = $value.padding;
        return $EdgeInsets.wrap(_padding);

      case 'maxZoom':
        final _maxZoom = $value.maxZoom;
        return _maxZoom == null ? const $null() : $double(_maxZoom);

      case 'minZoom':
        final _minZoom = $value.minZoom;
        return $double(_minZoom);

      case 'forceIntegerZoomLevel':
        final _forceIntegerZoomLevel = $value.forceIntegerZoomLevel;
        return $bool(_forceIntegerZoomLevel);
      case 'fit':
        return __fit;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __fit = $Function(_fit);
  static $Value? _fit(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $FitBounds;
    final result = self.$value.fit(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FitInsideBounds]
class $FitInsideBounds implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$FitInsideBounds]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_fit.dart',
    'FitInsideBounds',
  );

  /// Compile-time type declaration of [$FitInsideBounds]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FitInsideBounds]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/map/camera/camera_fit.dart',
          'CameraFit',
        ),
        [],
      ),
    ),
    constructors: {
      '_': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'bounds',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/geo/latlng_bounds.dart',
                    'LatLngBounds',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'forceIntegerZoomLevel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'fit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      '_getCenter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
              [],
            ),
          ),
          namedParams: [
            BridgeParameter(
              'newZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'paddingOffset',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),
          ],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      '_normalize': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'start',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'end',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      '_rectInRotRectScale': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [
            BridgeParameter(
              'angleRad',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'smallRectHalfWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'smallRectHalfHeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'bigRectHalfWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'bigRectHalfHeight',
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
      'bounds': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/geo/latlng_bounds.dart',
              'LatLngBounds',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'padding': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/painting/edge_insets.dart',
              'EdgeInsets',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'maxZoom': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'minZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'forceIntegerZoomLevel': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final FitInsideBounds $value;

  @override
  FitInsideBounds get $reified => $value;

  /// Wrap a [FitInsideBounds] in a [$FitInsideBounds]
  $FitInsideBounds.wrap(this.$value) : _superclass = $CameraFit.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bounds':
        final _bounds = $value.bounds;
        return $LatLngBounds.wrap(_bounds);

      case 'padding':
        final _padding = $value.padding;
        return $EdgeInsets.wrap(_padding);

      case 'maxZoom':
        final _maxZoom = $value.maxZoom;
        return _maxZoom == null ? const $null() : $double(_maxZoom);

      case 'minZoom':
        final _minZoom = $value.minZoom;
        return $double(_minZoom);

      case 'forceIntegerZoomLevel':
        final _forceIntegerZoomLevel = $value.forceIntegerZoomLevel;
        return $bool(_forceIntegerZoomLevel);
      case 'fit':
        return __fit;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __fit = $Function(_fit);
  static $Value? _fit(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $FitInsideBounds;
    final result = self.$value.fit(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FitCoordinates]
class $FitCoordinates implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$FitCoordinates]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_fit.dart',
    'FitCoordinates',
  );

  /// Compile-time type declaration of [$FitCoordinates]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FitCoordinates]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/map/camera/camera_fit.dart',
          'CameraFit',
        ),
        [],
      ),
    ),
    constructors: {
      '_': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'coordinates',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'forceIntegerZoomLevel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'fit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      '_getCoordinatesZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'camera',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera.dart',
                    'MapCamera',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'pixelPadding',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'coordinates': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'padding': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/painting/edge_insets.dart',
              'EdgeInsets',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'maxZoom': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'minZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'forceIntegerZoomLevel': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final FitCoordinates $value;

  @override
  FitCoordinates get $reified => $value;

  /// Wrap a [FitCoordinates] in a [$FitCoordinates]
  $FitCoordinates.wrap(this.$value) : _superclass = $CameraFit.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'coordinates':
        final _coordinates = $value.coordinates;
        return $List.view(_coordinates, (e) => runtime.wrapAlways(e));

      case 'padding':
        final _padding = $value.padding;
        return $EdgeInsets.wrap(_padding);

      case 'maxZoom':
        final _maxZoom = $value.maxZoom;
        return _maxZoom == null ? const $null() : $double(_maxZoom);

      case 'minZoom':
        final _minZoom = $value.minZoom;
        return $double(_minZoom);

      case 'forceIntegerZoomLevel':
        final _forceIntegerZoomLevel = $value.forceIntegerZoomLevel;
        return $bool(_forceIntegerZoomLevel);
      case 'fit':
        return __fit;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __fit = $Function(_fit);
  static $Value? _fit(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $FitCoordinates;
    final result = self.$value.fit(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
