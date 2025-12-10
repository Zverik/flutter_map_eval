import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';

import '../map/camera.eval.dart';

/// dart_eval enum wrapper binding for [MapEventSource]
class $MapEventSource implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventSource',
      $MapEventSource._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventSource.values*g',
      $MapEventSource.$values,
    );
  }

  /// Compile-time type specification of [$MapEventSource]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventSource',
  );

  /// Compile-time type declaration of [$MapEventSource]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventSource]
  static const $declaration = BridgeEnumDef(
    $type,

    values: [
      'mapController',
      'tap',
      'secondaryTap',
      'longPress',
      'doubleTap',
      'doubleTapHold',
      'dragStart',
      'onDrag',
      'dragEnd',
      'multiFingerGestureStart',
      'onMultiFinger',
      'multiFingerEnd',
      'flingAnimationController',
      'doubleTapZoomAnimationController',
      'interactiveFlagsChanged',
      'fitCamera',
      'custom',
      'scrollWheel',
      'nonRotatedSizeChange',
      'cursorKeyboardRotation',
      'keyboard',
    ],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'mapController': $MapEventSource.wrap(MapEventSource.mapController),
    'tap': $MapEventSource.wrap(MapEventSource.tap),
    'secondaryTap': $MapEventSource.wrap(MapEventSource.secondaryTap),
    'longPress': $MapEventSource.wrap(MapEventSource.longPress),
    'doubleTap': $MapEventSource.wrap(MapEventSource.doubleTap),
    'doubleTapHold': $MapEventSource.wrap(MapEventSource.doubleTapHold),
    'dragStart': $MapEventSource.wrap(MapEventSource.dragStart),
    'onDrag': $MapEventSource.wrap(MapEventSource.onDrag),
    'dragEnd': $MapEventSource.wrap(MapEventSource.dragEnd),
    'multiFingerGestureStart': $MapEventSource.wrap(
      MapEventSource.multiFingerGestureStart,
    ),
    'onMultiFinger': $MapEventSource.wrap(MapEventSource.onMultiFinger),
    'multiFingerEnd': $MapEventSource.wrap(MapEventSource.multiFingerEnd),
    'flingAnimationController': $MapEventSource.wrap(
      MapEventSource.flingAnimationController,
    ),
    'doubleTapZoomAnimationController': $MapEventSource.wrap(
      MapEventSource.doubleTapZoomAnimationController,
    ),
    'interactiveFlagsChanged': $MapEventSource.wrap(
      MapEventSource.interactiveFlagsChanged,
    ),
    'fitCamera': $MapEventSource.wrap(MapEventSource.fitCamera),
    'custom': $MapEventSource.wrap(MapEventSource.custom),
    'scrollWheel': $MapEventSource.wrap(MapEventSource.scrollWheel),
    'nonRotatedSizeChange': $MapEventSource.wrap(
      MapEventSource.nonRotatedSizeChange,
    ),
    'cursorKeyboardRotation': $MapEventSource.wrap(
      MapEventSource.cursorKeyboardRotation,
    ),
    'keyboard': $MapEventSource.wrap(MapEventSource.keyboard),
  };

  /// Wrapper for the [MapEventSource.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapEventSource.values;
    return $List.view(value, (e) => $MapEventSource.wrap(e));
  }

  final $Instance _superclass;

  @override
  final MapEventSource $value;

  @override
  MapEventSource get $reified => $value;

  /// Wrap a [MapEventSource] in a [$MapEventSource]
  $MapEventSource.wrap(this.$value) : _superclass = $Object($value);

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

/// dart_eval wrapper binding for [MapEvent]
class $MapEvent implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$MapEvent]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEvent',
  );

  /// Compile-time type declaration of [$MapEvent]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEvent]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'source': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/gestures/map_events.dart',
              'MapEventSource',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'camera': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/camera/camera.dart',
              'MapCamera',
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
  final MapEvent $value;

  @override
  MapEvent get $reified => $value;

  /// Wrap a [MapEvent] in a [$MapEvent]
  $MapEvent.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'source':
        final _source = $value.source;
        return $MapEventSource.wrap(_source);

      case 'camera':
        final _camera = $value.camera;
        return $MapCamera.wrap(_camera);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MapEventWithMove]
class $MapEventWithMove implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventWithMove.fromSource',
      $MapEventWithMove.$fromSource,
    );
  }

  /// Compile-time type specification of [$MapEventWithMove]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventWithMove',
  );

  /// Compile-time type declaration of [$MapEventWithMove]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventWithMove]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: true,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'oldCamera',
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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'fromSource': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/gestures/map_events.dart',
                'MapEventWithMove',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'oldCamera',
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
              'hasGesture',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),

            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
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
      'oldCamera': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/camera/camera.dart',
              'MapCamera',
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

  /// Wrapper for the [MapEventWithMove.fromSource] method
  static $Value? $fromSource(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = MapEventWithMove.fromSource(
      oldCamera: args[0]!.$value,
      camera: args[1]!.$value,
      hasGesture: args[2]!.$value,
      source: args[3]!.$value,
      id: args[4]?.$value,
    );
    return value == null ? const $null() : $MapEventWithMove.wrap(value);
  }

  final $Instance _superclass;

  @override
  final MapEventWithMove $value;

  @override
  MapEventWithMove get $reified => $value;

  /// Wrap a [MapEventWithMove] in a [$MapEventWithMove]
  $MapEventWithMove.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'oldCamera':
        final _oldCamera = $value.oldCamera;
        return $MapCamera.wrap(_oldCamera);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MapEventTap]
class $MapEventTap implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventTap.',
      $MapEventTap.$new,
    );
  }

  /// Compile-time type specification of [$MapEventTap]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventTap',
  );

  /// Compile-time type declaration of [$MapEventTap]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventTap]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'tapPosition',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'tapPosition': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapEventTap.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventTap.wrap(
      MapEventTap(
        tapPosition: args[0]!.$value,
        source: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventTap $value;

  @override
  MapEventTap get $reified => $value;

  /// Wrap a [MapEventTap] in a [$MapEventTap]
  $MapEventTap.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'tapPosition':
        final _tapPosition = $value.tapPosition;
        return runtime.wrapAlways(_tapPosition);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MapEventSecondaryTap]
class $MapEventSecondaryTap implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventSecondaryTap.',
      $MapEventSecondaryTap.$new,
    );
  }

  /// Compile-time type specification of [$MapEventSecondaryTap]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventSecondaryTap',
  );

  /// Compile-time type declaration of [$MapEventSecondaryTap]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventSecondaryTap]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'tapPosition',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'tapPosition': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapEventSecondaryTap.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventSecondaryTap.wrap(
      MapEventSecondaryTap(
        tapPosition: args[0]!.$value,
        source: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventSecondaryTap $value;

  @override
  MapEventSecondaryTap get $reified => $value;

  /// Wrap a [MapEventSecondaryTap] in a [$MapEventSecondaryTap]
  $MapEventSecondaryTap.wrap(this.$value)
    : _superclass = $MapEvent.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'tapPosition':
        final _tapPosition = $value.tapPosition;
        return runtime.wrapAlways(_tapPosition);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MapEventLongPress]
class $MapEventLongPress implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventLongPress.',
      $MapEventLongPress.$new,
    );
  }

  /// Compile-time type specification of [$MapEventLongPress]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventLongPress',
  );

  /// Compile-time type declaration of [$MapEventLongPress]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventLongPress]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'tapPosition',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'tapPosition': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapEventLongPress.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventLongPress.wrap(
      MapEventLongPress(
        tapPosition: args[0]!.$value,
        source: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventLongPress $value;

  @override
  MapEventLongPress get $reified => $value;

  /// Wrap a [MapEventLongPress] in a [$MapEventLongPress]
  $MapEventLongPress.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'tapPosition':
        final _tapPosition = $value.tapPosition;
        return runtime.wrapAlways(_tapPosition);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MapEventMoveStart]
class $MapEventMoveStart implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventMoveStart.',
      $MapEventMoveStart.$new,
    );
  }

  /// Compile-time type specification of [$MapEventMoveStart]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventMoveStart',
  );

  /// Compile-time type declaration of [$MapEventMoveStart]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventMoveStart]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventMoveStart.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventMoveStart.wrap(
      MapEventMoveStart(source: args[0]!.$value, camera: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventMoveStart $value;

  @override
  MapEventMoveStart get $reified => $value;

  /// Wrap a [MapEventMoveStart] in a [$MapEventMoveStart]
  $MapEventMoveStart.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventMoveEnd]
class $MapEventMoveEnd implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventMoveEnd.',
      $MapEventMoveEnd.$new,
    );
  }

  /// Compile-time type specification of [$MapEventMoveEnd]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventMoveEnd',
  );

  /// Compile-time type declaration of [$MapEventMoveEnd]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventMoveEnd]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventMoveEnd.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventMoveEnd.wrap(
      MapEventMoveEnd(source: args[0]!.$value, camera: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventMoveEnd $value;

  @override
  MapEventMoveEnd get $reified => $value;

  /// Wrap a [MapEventMoveEnd] in a [$MapEventMoveEnd]
  $MapEventMoveEnd.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventFlingAnimation]
class $MapEventFlingAnimation implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventFlingAnimation.',
      $MapEventFlingAnimation.$new,
    );
  }

  /// Compile-time type specification of [$MapEventFlingAnimation]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventFlingAnimation',
  );

  /// Compile-time type declaration of [$MapEventFlingAnimation]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventFlingAnimation]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEventWithMove',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'oldCamera',
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
          params: [],
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

  /// Wrapper for the [MapEventFlingAnimation.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventFlingAnimation.wrap(
      MapEventFlingAnimation(
        source: args[0]!.$value,
        oldCamera: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventFlingAnimation $value;

  @override
  MapEventFlingAnimation get $reified => $value;

  /// Wrap a [MapEventFlingAnimation] in a [$MapEventFlingAnimation]
  $MapEventFlingAnimation.wrap(this.$value)
    : _superclass = $MapEventWithMove.wrap($value);

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

/// dart_eval wrapper binding for [MapEventFlingAnimationNotStarted]
class $MapEventFlingAnimationNotStarted implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventFlingAnimationNotStarted.',
      $MapEventFlingAnimationNotStarted.$new,
    );
  }

  /// Compile-time type specification of [$MapEventFlingAnimationNotStarted]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventFlingAnimationNotStarted',
  );

  /// Compile-time type declaration of [$MapEventFlingAnimationNotStarted]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventFlingAnimationNotStarted]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventFlingAnimationNotStarted.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventFlingAnimationNotStarted.wrap(
      MapEventFlingAnimationNotStarted(
        source: args[0]!.$value,
        camera: args[1]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventFlingAnimationNotStarted $value;

  @override
  MapEventFlingAnimationNotStarted get $reified => $value;

  /// Wrap a [MapEventFlingAnimationNotStarted] in a [$MapEventFlingAnimationNotStarted]
  $MapEventFlingAnimationNotStarted.wrap(this.$value)
    : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventFlingAnimationStart]
class $MapEventFlingAnimationStart implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventFlingAnimationStart.',
      $MapEventFlingAnimationStart.$new,
    );
  }

  /// Compile-time type specification of [$MapEventFlingAnimationStart]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventFlingAnimationStart',
  );

  /// Compile-time type declaration of [$MapEventFlingAnimationStart]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventFlingAnimationStart]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventFlingAnimationStart.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventFlingAnimationStart.wrap(
      MapEventFlingAnimationStart(
        source: args[0]!.$value,
        camera: args[1]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventFlingAnimationStart $value;

  @override
  MapEventFlingAnimationStart get $reified => $value;

  /// Wrap a [MapEventFlingAnimationStart] in a [$MapEventFlingAnimationStart]
  $MapEventFlingAnimationStart.wrap(this.$value)
    : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventFlingAnimationEnd]
class $MapEventFlingAnimationEnd implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventFlingAnimationEnd.',
      $MapEventFlingAnimationEnd.$new,
    );
  }

  /// Compile-time type specification of [$MapEventFlingAnimationEnd]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventFlingAnimationEnd',
  );

  /// Compile-time type declaration of [$MapEventFlingAnimationEnd]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventFlingAnimationEnd]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventFlingAnimationEnd.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventFlingAnimationEnd.wrap(
      MapEventFlingAnimationEnd(
        source: args[0]!.$value,
        camera: args[1]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventFlingAnimationEnd $value;

  @override
  MapEventFlingAnimationEnd get $reified => $value;

  /// Wrap a [MapEventFlingAnimationEnd] in a [$MapEventFlingAnimationEnd]
  $MapEventFlingAnimationEnd.wrap(this.$value)
    : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventDoubleTapZoom]
class $MapEventDoubleTapZoom implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventDoubleTapZoom.',
      $MapEventDoubleTapZoom.$new,
    );
  }

  /// Compile-time type specification of [$MapEventDoubleTapZoom]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventDoubleTapZoom',
  );

  /// Compile-time type declaration of [$MapEventDoubleTapZoom]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventDoubleTapZoom]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEventWithMove',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'oldCamera',
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
          params: [],
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

  /// Wrapper for the [MapEventDoubleTapZoom.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventDoubleTapZoom.wrap(
      MapEventDoubleTapZoom(
        source: args[0]!.$value,
        oldCamera: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventDoubleTapZoom $value;

  @override
  MapEventDoubleTapZoom get $reified => $value;

  /// Wrap a [MapEventDoubleTapZoom] in a [$MapEventDoubleTapZoom]
  $MapEventDoubleTapZoom.wrap(this.$value)
    : _superclass = $MapEventWithMove.wrap($value);

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

/// dart_eval wrapper binding for [MapEventScrollWheelZoom]
class $MapEventScrollWheelZoom implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventScrollWheelZoom.',
      $MapEventScrollWheelZoom.$new,
    );
  }

  /// Compile-time type specification of [$MapEventScrollWheelZoom]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventScrollWheelZoom',
  );

  /// Compile-time type declaration of [$MapEventScrollWheelZoom]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventScrollWheelZoom]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEventWithMove',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'oldCamera',
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
          params: [],
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

  /// Wrapper for the [MapEventScrollWheelZoom.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventScrollWheelZoom.wrap(
      MapEventScrollWheelZoom(
        source: args[0]!.$value,
        oldCamera: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventScrollWheelZoom $value;

  @override
  MapEventScrollWheelZoom get $reified => $value;

  /// Wrap a [MapEventScrollWheelZoom] in a [$MapEventScrollWheelZoom]
  $MapEventScrollWheelZoom.wrap(this.$value)
    : _superclass = $MapEventWithMove.wrap($value);

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

/// dart_eval wrapper binding for [MapEventDoubleTapZoomStart]
class $MapEventDoubleTapZoomStart implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventDoubleTapZoomStart.',
      $MapEventDoubleTapZoomStart.$new,
    );
  }

  /// Compile-time type specification of [$MapEventDoubleTapZoomStart]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventDoubleTapZoomStart',
  );

  /// Compile-time type declaration of [$MapEventDoubleTapZoomStart]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventDoubleTapZoomStart]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventDoubleTapZoomStart.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventDoubleTapZoomStart.wrap(
      MapEventDoubleTapZoomStart(
        source: args[0]!.$value,
        camera: args[1]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventDoubleTapZoomStart $value;

  @override
  MapEventDoubleTapZoomStart get $reified => $value;

  /// Wrap a [MapEventDoubleTapZoomStart] in a [$MapEventDoubleTapZoomStart]
  $MapEventDoubleTapZoomStart.wrap(this.$value)
    : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventDoubleTapZoomEnd]
class $MapEventDoubleTapZoomEnd implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventDoubleTapZoomEnd.',
      $MapEventDoubleTapZoomEnd.$new,
    );
  }

  /// Compile-time type specification of [$MapEventDoubleTapZoomEnd]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventDoubleTapZoomEnd',
  );

  /// Compile-time type declaration of [$MapEventDoubleTapZoomEnd]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventDoubleTapZoomEnd]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventDoubleTapZoomEnd.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventDoubleTapZoomEnd.wrap(
      MapEventDoubleTapZoomEnd(
        source: args[0]!.$value,
        camera: args[1]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventDoubleTapZoomEnd $value;

  @override
  MapEventDoubleTapZoomEnd get $reified => $value;

  /// Wrap a [MapEventDoubleTapZoomEnd] in a [$MapEventDoubleTapZoomEnd]
  $MapEventDoubleTapZoomEnd.wrap(this.$value)
    : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventRotate]
class $MapEventRotate implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventRotate.',
      $MapEventRotate.$new,
    );
  }

  /// Compile-time type specification of [$MapEventRotate]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventRotate',
  );

  /// Compile-time type declaration of [$MapEventRotate]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventRotate]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEventWithMove',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'oldCamera',
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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'id': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapEventRotate.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventRotate.wrap(
      MapEventRotate(
        id: args[0]!.$value,
        source: args[1]!.$value,
        oldCamera: args[2]!.$value,
        camera: args[3]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventRotate $value;

  @override
  MapEventRotate get $reified => $value;

  /// Wrap a [MapEventRotate] in a [$MapEventRotate]
  $MapEventRotate.wrap(this.$value)
    : _superclass = $MapEventWithMove.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'id':
        final _id = $value.id;
        return _id == null ? const $null() : $String(_id);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MapEventRotateStart]
class $MapEventRotateStart implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventRotateStart.',
      $MapEventRotateStart.$new,
    );
  }

  /// Compile-time type specification of [$MapEventRotateStart]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventRotateStart',
  );

  /// Compile-time type declaration of [$MapEventRotateStart]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventRotateStart]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventRotateStart.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventRotateStart.wrap(
      MapEventRotateStart(source: args[0]!.$value, camera: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventRotateStart $value;

  @override
  MapEventRotateStart get $reified => $value;

  /// Wrap a [MapEventRotateStart] in a [$MapEventRotateStart]
  $MapEventRotateStart.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventRotateEnd]
class $MapEventRotateEnd implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventRotateEnd.',
      $MapEventRotateEnd.$new,
    );
  }

  /// Compile-time type specification of [$MapEventRotateEnd]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventRotateEnd',
  );

  /// Compile-time type declaration of [$MapEventRotateEnd]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventRotateEnd]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEvent',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

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
          params: [],
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

  /// Wrapper for the [MapEventRotateEnd.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventRotateEnd.wrap(
      MapEventRotateEnd(source: args[0]!.$value, camera: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventRotateEnd $value;

  @override
  MapEventRotateEnd get $reified => $value;

  /// Wrap a [MapEventRotateEnd] in a [$MapEventRotateEnd]
  $MapEventRotateEnd.wrap(this.$value) : _superclass = $MapEvent.wrap($value);

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

/// dart_eval wrapper binding for [MapEventNonRotatedSizeChange]
class $MapEventNonRotatedSizeChange implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/map_events.dart',
      'MapEventNonRotatedSizeChange.',
      $MapEventNonRotatedSizeChange.$new,
    );
  }

  /// Compile-time type specification of [$MapEventNonRotatedSizeChange]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/map_events.dart',
    'MapEventNonRotatedSizeChange',
  );

  /// Compile-time type declaration of [$MapEventNonRotatedSizeChange]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapEventNonRotatedSizeChange]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map/src/gestures/map_events.dart',
          'MapEventWithMove',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'source',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEventSource',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'oldCamera',
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
          params: [],
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

  /// Wrapper for the [MapEventNonRotatedSizeChange.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapEventNonRotatedSizeChange.wrap(
      MapEventNonRotatedSizeChange(
        source: args[0]!.$value,
        oldCamera: args[1]!.$value,
        camera: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MapEventNonRotatedSizeChange $value;

  @override
  MapEventNonRotatedSizeChange get $reified => $value;

  /// Wrap a [MapEventNonRotatedSizeChange] in a [$MapEventNonRotatedSizeChange]
  $MapEventNonRotatedSizeChange.wrap(this.$value)
    : _superclass = $MapEventWithMove.wrap($value);

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
