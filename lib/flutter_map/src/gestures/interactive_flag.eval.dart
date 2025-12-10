import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [InteractiveFlag]
class $InteractiveFlag implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasFlag',
      $InteractiveFlag.$hasFlag,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasMultiFinger',
      $InteractiveFlag.$hasMultiFinger,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasDrag',
      $InteractiveFlag.$hasDrag,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasFlingAnimation',
      $InteractiveFlag.$hasFlingAnimation,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasPinchMove',
      $InteractiveFlag.$hasPinchMove,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasPinchZoom',
      $InteractiveFlag.$hasPinchZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasDoubleTapDragZoom',
      $InteractiveFlag.$hasDoubleTapDragZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasDoubleTapZoom',
      $InteractiveFlag.$hasDoubleTapZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasRotate',
      $InteractiveFlag.$hasRotate,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.hasScrollWheelZoom',
      $InteractiveFlag.$hasScrollWheelZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.all*g',
      $InteractiveFlag.$all,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.none*g',
      $InteractiveFlag.$none,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.drag*g',
      $InteractiveFlag.$drag,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.flingAnimation*g',
      $InteractiveFlag.$flingAnimation,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.pinchMove*g',
      $InteractiveFlag.$pinchMove,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.pinchZoom*g',
      $InteractiveFlag.$pinchZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.doubleTapZoom*g',
      $InteractiveFlag.$doubleTapZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.doubleTapDragZoom*g',
      $InteractiveFlag.$doubleTapDragZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.scrollWheelZoom*g',
      $InteractiveFlag.$scrollWheelZoom,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/interactive_flag.dart',
      'InteractiveFlag.rotate*g',
      $InteractiveFlag.$rotate,
    );
  }

  /// Compile-time type specification of [$InteractiveFlag]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/interactive_flag.dart',
    'InteractiveFlag',
  );

  /// Compile-time type declaration of [$InteractiveFlag]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$InteractiveFlag]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '_': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'hasFlag': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'leftFlags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),

            BridgeParameter(
              'rightFlags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasMultiFinger': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasDrag': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasFlingAnimation': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasPinchMove': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasPinchZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasDoubleTapDragZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasDoubleTapZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasRotate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'hasScrollWheelZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'all': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'none': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'drag': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'flingAnimation': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'pinchMove': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'pinchZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'doubleTapZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'doubleTapDragZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'scrollWheelZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'rotate': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      '_multiFingerFlags': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [InteractiveFlag.hasFlag] method
  static $Value? $hasFlag(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = InteractiveFlag.hasFlag(args[0]!.$value, args[1]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasMultiFinger] method
  static $Value? $hasMultiFinger(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasMultiFinger(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasDrag] method
  static $Value? $hasDrag(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = InteractiveFlag.hasDrag(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasFlingAnimation] method
  static $Value? $hasFlingAnimation(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasFlingAnimation(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasPinchMove] method
  static $Value? $hasPinchMove(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasPinchMove(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasPinchZoom] method
  static $Value? $hasPinchZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasPinchZoom(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasDoubleTapDragZoom] method
  static $Value? $hasDoubleTapDragZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasDoubleTapDragZoom(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasDoubleTapZoom] method
  static $Value? $hasDoubleTapZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasDoubleTapZoom(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasRotate] method
  static $Value? $hasRotate(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasRotate(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.hasScrollWheelZoom] method
  static $Value? $hasScrollWheelZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.hasScrollWheelZoom(args[0]!.$value);
    return $bool(value);
  }

  /// Wrapper for the [InteractiveFlag.all] getter
  static $Value? $all(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = InteractiveFlag.all;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.none] getter
  static $Value? $none(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = InteractiveFlag.none;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.drag] getter
  static $Value? $drag(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = InteractiveFlag.drag;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.flingAnimation] getter
  static $Value? $flingAnimation(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.flingAnimation;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.pinchMove] getter
  static $Value? $pinchMove(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.pinchMove;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.pinchZoom] getter
  static $Value? $pinchZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.pinchZoom;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.doubleTapZoom] getter
  static $Value? $doubleTapZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.doubleTapZoom;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.doubleTapDragZoom] getter
  static $Value? $doubleTapDragZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.doubleTapDragZoom;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.scrollWheelZoom] getter
  static $Value? $scrollWheelZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractiveFlag.scrollWheelZoom;
    return $int(value);
  }

  /// Wrapper for the [InteractiveFlag.rotate] getter
  static $Value? $rotate(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = InteractiveFlag.rotate;
    return $int(value);
  }

  final $Instance _superclass;

  @override
  final InteractiveFlag $value;

  @override
  InteractiveFlag get $reified => $value;

  /// Wrap a [InteractiveFlag] in a [$InteractiveFlag]
  $InteractiveFlag.wrap(this.$value) : _superclass = $Object($value);

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
