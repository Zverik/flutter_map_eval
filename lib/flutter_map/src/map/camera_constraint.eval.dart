import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'camera.eval.dart';
import '../geo/latlng_bounds.eval.dart';

/// dart_eval wrapper binding for [CameraConstraint]
class $CameraConstraint implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_constraint.dart',
      'CameraConstraint.unconstrained',
      $CameraConstraint.$unconstrained,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_constraint.dart',
      'CameraConstraint.containCenter',
      $CameraConstraint.$containCenter,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_constraint.dart',
      'CameraConstraint.contain',
      $CameraConstraint.$contain,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera_constraint.dart',
      'CameraConstraint.containLatitude',
      $CameraConstraint.$containLatitude,
    );
  }

  /// Compile-time type specification of [$CameraConstraint]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_constraint.dart',
    'CameraConstraint',
  );

  /// Compile-time type declaration of [$CameraConstraint]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CameraConstraint]
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

      'unconstrained': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: true,
      ),

      'containCenter': BridgeConstructorDef(
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
          ],
          params: [],
        ),
        isFactory: true,
      ),

      'contain': BridgeConstructorDef(
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
          ],
          params: [],
        ),
        isFactory: true,
      ),

      'containLatitude': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'a',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'b',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'constrain': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
            nullable: true,
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

  /// Wrapper for the [CameraConstraint.unconstrained] constructor
  static $Value? $unconstrained(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraConstraint.wrap(CameraConstraint.unconstrained());
  }

  /// Wrapper for the [CameraConstraint.containCenter] constructor
  static $Value? $containCenter(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraConstraint.wrap(
      CameraConstraint.containCenter(bounds: args[0]!.$value),
    );
  }

  /// Wrapper for the [CameraConstraint.contain] constructor
  static $Value? $contain(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraConstraint.wrap(
      CameraConstraint.contain(bounds: args[0]!.$value),
    );
  }

  /// Wrapper for the [CameraConstraint.containLatitude] constructor
  static $Value? $containLatitude(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CameraConstraint.wrap(
      CameraConstraint.containLatitude(args[0]?.$value, args[1]?.$value),
    );
  }

  final $Instance _superclass;

  @override
  final CameraConstraint $value;

  @override
  CameraConstraint get $reified => $value;

  /// Wrap a [CameraConstraint] in a [$CameraConstraint]
  $CameraConstraint.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'constrain':
        return __constrain;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __constrain = $Function(_constrain);
  static $Value? _constrain(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CameraConstraint;
    final result = self.$value.constrain(args[0]!.$value);
    return result == null ? const $null() : $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [ContainCameraCenter]
class $ContainCameraCenter implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$ContainCameraCenter]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_constraint.dart',
    'ContainCameraCenter',
  );

  /// Compile-time type declaration of [$ContainCameraCenter]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ContainCameraCenter]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/map/camera/camera_constraint.dart',
          'CameraConstraint',
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
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'constrain': BridgeMethodDef(
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
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final ContainCameraCenter $value;

  @override
  ContainCameraCenter get $reified => $value;

  /// Wrap a [ContainCameraCenter] in a [$ContainCameraCenter]
  $ContainCameraCenter.wrap(this.$value)
    : _superclass = $CameraConstraint.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bounds':
        final _bounds = $value.bounds;
        return $LatLngBounds.wrap(_bounds);
      case 'constrain':
        return __constrain;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __constrain = $Function(_constrain);
  static $Value? _constrain(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $ContainCameraCenter;
    final result = self.$value.constrain(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [ContainCamera]
class $ContainCamera implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$ContainCamera]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_constraint.dart',
    'ContainCamera',
  );

  /// Compile-time type declaration of [$ContainCamera]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ContainCamera]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/map/camera/camera_constraint.dart',
          'CameraConstraint',
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
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'constrain': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
            nullable: true,
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
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final ContainCamera $value;

  @override
  ContainCamera get $reified => $value;

  /// Wrap a [ContainCamera] in a [$ContainCamera]
  $ContainCamera.wrap(this.$value)
    : _superclass = $CameraConstraint.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bounds':
        final _bounds = $value.bounds;
        return $LatLngBounds.wrap(_bounds);
      case 'constrain':
        return __constrain;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __constrain = $Function(_constrain);
  static $Value? _constrain(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $ContainCamera;
    final result = self.$value.constrain(args[0]!.$value);
    return result == null ? const $null() : $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [ContainCameraLatitude]
class $ContainCameraLatitude implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$ContainCameraLatitude]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera_constraint.dart',
    'ContainCameraLatitude',
  );

  /// Compile-time type declaration of [$ContainCameraLatitude]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ContainCameraLatitude]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/map/camera/camera_constraint.dart',
          'CameraConstraint',
        ),
        [],
      ),
    ),
    constructors: {
      '_': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'a',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'b',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'constrain': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
            nullable: true,
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
    fields: {
      'a': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'b': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final ContainCameraLatitude $value;

  @override
  ContainCameraLatitude get $reified => $value;

  /// Wrap a [ContainCameraLatitude] in a [$ContainCameraLatitude]
  $ContainCameraLatitude.wrap(this.$value)
    : _superclass = $CameraConstraint.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'a':
        final _a = $value.a;
        return $double(_a);

      case 'b':
        final _b = $value.b;
        return $double(_b);
      case 'constrain':
        return __constrain;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __constrain = $Function(_constrain);
  static $Value? _constrain(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $ContainCameraLatitude;
    final result = self.$value.constrain(args[0]!.$value);
    return result == null ? const $null() : $MapCamera.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
