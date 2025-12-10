import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/animation.dart';

import 'camera.eval.dart';
import 'cursor_keyboard_rotation.eval.dart';
import 'keyboard.eval.dart';

/// dart_eval wrapper binding for [InteractionOptions]
class $InteractionOptions implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/interaction.dart',
      'InteractionOptions.',
      $InteractionOptions.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/interaction.dart',
      'InteractionOptions.defaultDoubleTapDragZoomChangeCalculator',
      $InteractionOptions.$defaultDoubleTapDragZoomChangeCalculator,
    );
  }

  /// Compile-time type specification of [$InteractionOptions]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/options/interaction.dart',
    'InteractionOptions',
  );

  /// Compile-time type declaration of [$InteractionOptions]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$InteractionOptions]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'flags',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'debugMultiFingerGestureWinner',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'enableMultiFingerGestureRace',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'rotationThreshold',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'rotationWinGestures',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'pinchZoomThreshold',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'pinchZoomWinGestures',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'pinchMoveThreshold',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'pinchMoveWinGestures',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'scrollWheelVelocity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'doubleTapDragZoomChangeCalculator',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.double, []),
                    ),
                    params: [
                      BridgeParameter(
                        'verticalOffset',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.double, []),
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
                    namedParams: [],
                  ),
                ),
              ),
              true,
            ),

            BridgeParameter(
              'doubleTapZoomDuration',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, [])),
              true,
            ),

            BridgeParameter(
              'doubleTapZoomCurve',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/animation/curves.dart',
                    'Curve',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'cursorKeyboardRotationOptions',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
                    'CursorKeyboardRotationOptions',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'keyboardOptions',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/options/keyboard.dart',
                    'KeyboardOptions',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'defaultDoubleTapDragZoomChangeCalculator': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'verticalOffset',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
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
        ),
        isStatic: true,
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'flags': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'debugMultiFingerGestureWinner': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'enableMultiFingerGestureRace': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'rotationThreshold': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'rotationWinGestures': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'pinchZoomThreshold': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'pinchZoomWinGestures': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'pinchMoveThreshold': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'pinchMoveWinGestures': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'scrollWheelVelocity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'doubleTapDragZoomChangeCalculator': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
              ),
              params: [
                BridgeParameter(
                  'verticalOffset',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
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
              namedParams: [],
            ),
          ),
        ),
        isStatic: false,
      ),

      'doubleTapZoomDuration': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, [])),
        isStatic: false,
      ),

      'doubleTapZoomCurve': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/animation/curves.dart',
              'Curve',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'cursorKeyboardRotationOptions': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
              'CursorKeyboardRotationOptions',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'keyboardOptions': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/options/keyboard.dart',
              'KeyboardOptions',
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

  /// Wrapper for the [InteractionOptions.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $InteractionOptions.wrap(
      InteractionOptions(
        flags: args[0]?.$value ?? InteractiveFlag.all,
        debugMultiFingerGestureWinner: args[1]?.$value ?? false,
        enableMultiFingerGestureRace: args[2]?.$value ?? false,
        rotationThreshold: args[3]?.$value ?? 20.0,
        rotationWinGestures: args[4]?.$value ?? MultiFingerGesture.rotate,
        pinchZoomThreshold: args[5]?.$value ?? 0.5,
        pinchZoomWinGestures:
            args[6]?.$value ??
            MultiFingerGesture.pinchZoom | MultiFingerGesture.pinchMove,
        pinchMoveThreshold: args[7]?.$value ?? 40.0,
        pinchMoveWinGestures:
            args[8]?.$value ??
            MultiFingerGesture.pinchZoom | MultiFingerGesture.pinchMove,
        scrollWheelVelocity: args[9]?.$value ?? 0.005,
        doubleTapDragZoomChangeCalculator:
            (double verticalOffset, MapCamera camera) {
              return (args[10]! as EvalCallable?)?.call(runtime, null, [
                $double(verticalOffset),
                $MapCamera.wrap(camera),
              ])?.$value;
            },
        doubleTapZoomDuration:
            args[11]?.$value ?? const Duration(milliseconds: 200),
        doubleTapZoomCurve: args[12]?.$value ?? Curves.fastOutSlowIn,
        cursorKeyboardRotationOptions:
            args[13]?.$value ?? const CursorKeyboardRotationOptions(),
        keyboardOptions: args[14]?.$value ?? const KeyboardOptions(),
      ),
    );
  }

  /// Wrapper for the [InteractionOptions.defaultDoubleTapDragZoomChangeCalculator] method
  static $Value? $defaultDoubleTapDragZoomChangeCalculator(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = InteractionOptions.defaultDoubleTapDragZoomChangeCalculator(
      args[0]!.$value,
      args[1]!.$value,
    );
    return $double(value);
  }

  final $Instance _superclass;

  @override
  final InteractionOptions $value;

  @override
  InteractionOptions get $reified => $value;

  /// Wrap a [InteractionOptions] in a [$InteractionOptions]
  $InteractionOptions.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'flags':
        final _flags = $value.flags;
        return $int(_flags);

      case 'debugMultiFingerGestureWinner':
        final _debugMultiFingerGestureWinner =
            $value.debugMultiFingerGestureWinner;
        return $bool(_debugMultiFingerGestureWinner);

      case 'enableMultiFingerGestureRace':
        final _enableMultiFingerGestureRace =
            $value.enableMultiFingerGestureRace;
        return $bool(_enableMultiFingerGestureRace);

      case 'rotationThreshold':
        final _rotationThreshold = $value.rotationThreshold;
        return $double(_rotationThreshold);

      case 'rotationWinGestures':
        final _rotationWinGestures = $value.rotationWinGestures;
        return $int(_rotationWinGestures);

      case 'pinchZoomThreshold':
        final _pinchZoomThreshold = $value.pinchZoomThreshold;
        return $double(_pinchZoomThreshold);

      case 'pinchZoomWinGestures':
        final _pinchZoomWinGestures = $value.pinchZoomWinGestures;
        return $int(_pinchZoomWinGestures);

      case 'pinchMoveThreshold':
        final _pinchMoveThreshold = $value.pinchMoveThreshold;
        return $double(_pinchMoveThreshold);

      case 'pinchMoveWinGestures':
        final _pinchMoveWinGestures = $value.pinchMoveWinGestures;
        return $int(_pinchMoveWinGestures);

      case 'scrollWheelVelocity':
        final _scrollWheelVelocity = $value.scrollWheelVelocity;
        return $double(_scrollWheelVelocity);

      case 'doubleTapDragZoomChangeCalculator':
        final _doubleTapDragZoomChangeCalculator =
            $value.doubleTapDragZoomChangeCalculator;
        return $Function((runtime, target, args) {
          final funcResult = _doubleTapDragZoomChangeCalculator(
            args[0]!.$value,
            args[1]!.$value,
          );
          return $double(funcResult);
        });

      case 'doubleTapZoomDuration':
        final _doubleTapZoomDuration = $value.doubleTapZoomDuration;
        return $Duration.wrap(_doubleTapZoomDuration);

      case 'doubleTapZoomCurve':
        final _doubleTapZoomCurve = $value.doubleTapZoomCurve;
        return $Curve.wrap(_doubleTapZoomCurve);

      case 'cursorKeyboardRotationOptions':
        final _cursorKeyboardRotationOptions =
            $value.cursorKeyboardRotationOptions;
        return $CursorKeyboardRotationOptions.wrap(
          _cursorKeyboardRotationOptions,
        );

      case 'keyboardOptions':
        final _keyboardOptions = $value.keyboardOptions;
        return $KeyboardOptions.wrap(_keyboardOptions);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
