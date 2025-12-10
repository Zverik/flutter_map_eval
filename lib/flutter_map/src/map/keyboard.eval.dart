import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/animation.dart';
import 'package:flutter_eval/src/widgets/focus_manager.dart';

/// dart_eval wrapper binding for [KeyboardOptions]
class $KeyboardOptions implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/keyboard.dart',
      'KeyboardOptions.',
      $KeyboardOptions.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/keyboard.dart',
      'KeyboardOptions.disabled',
      $KeyboardOptions.$disabled,
    );
  }

  /// Compile-time type specification of [$KeyboardOptions]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/options/keyboard.dart',
    'KeyboardOptions',
  );

  /// Compile-time type declaration of [$KeyboardOptions]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$KeyboardOptions]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'enableArrowKeysPanning',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'enableWASDPanning',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'enableQERotating',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'enableRFZooming',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'maxPanVelocity',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.double, []),
                    ),
                    params: [
                      BridgeParameter(
                        'zoom',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.double, []),
                        ),
                        false,
                      ),
                    ],
                    namedParams: [],
                  ),
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'panLeapVelocityMultiplier',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'maxZoomVelocity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'zoomLeapVelocityMultiplier',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'maxRotateVelocity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'rotateLeapVelocityMultiplier',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'animationCurveDuration',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, [])),
              true,
            ),

            BridgeParameter(
              'animationCurveReverseDuration',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.duration, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'animationCurveCurve',
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
              'performLeapTriggerDuration',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.duration, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'leapMaxOfCurveComponent',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'focusNode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/widgets/focus_manager.dart',
                    'FocusNode',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'autofocus',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'disabled': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'enableArrowKeysPanning': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'enableWASDPanning': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'enableQERotating': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'enableRFZooming': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'maxPanVelocity': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
              ),
              params: [
                BridgeParameter(
                  'zoom',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                  false,
                ),
              ],
              namedParams: [],
            ),
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'panLeapVelocityMultiplier': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'maxZoomVelocity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'zoomLeapVelocityMultiplier': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'maxRotateVelocity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'rotateLeapVelocityMultiplier': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'animationCurveDuration': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, [])),
        isStatic: false,
      ),

      'animationCurveReverseDuration': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.duration, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'animationCurveCurve': BridgeFieldDef(
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

      'performLeapTriggerDuration': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.duration, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'leapMaxOfCurveComponent': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'focusNode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/widgets/focus_manager.dart',
              'FocusNode',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autofocus': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [KeyboardOptions.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $KeyboardOptions.wrap(
      KeyboardOptions(
        enableArrowKeysPanning: args[0]?.$value ?? true,
        enableWASDPanning: args[1]?.$value ?? false,
        enableQERotating: args[2]?.$value ?? false,
        enableRFZooming: args[3]?.$value ?? false,
        maxPanVelocity: (double zoom) {
          return (args[4]! as EvalCallable?)?.call(runtime, null, [
            $double(zoom),
          ])?.$value;
        },
        panLeapVelocityMultiplier: args[5]?.$value ?? 5,
        maxZoomVelocity: args[6]?.$value ?? 0.03,
        zoomLeapVelocityMultiplier: args[7]?.$value ?? 3,
        maxRotateVelocity: args[8]?.$value ?? 3,
        rotateLeapVelocityMultiplier: args[9]?.$value ?? 3,
        animationCurveDuration:
            args[10]?.$value ?? const Duration(milliseconds: 450),
        animationCurveReverseDuration:
            args[11]?.$value ?? const Duration(milliseconds: 600),
        animationCurveCurve: args[12]?.$value ?? Curves.easeInOut,
        performLeapTriggerDuration:
            args[13]?.$value ?? const Duration(milliseconds: 100),
        leapMaxOfCurveComponent: args[14]?.$value ?? 0.6,
        focusNode: args[15]?.$value,
        autofocus: args[16]?.$value ?? true,
      ),
    );
  }

  /// Wrapper for the [KeyboardOptions.disabled] constructor
  static $Value? $disabled(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $KeyboardOptions.wrap(KeyboardOptions.disabled());
  }

  final $Instance _superclass;

  @override
  final KeyboardOptions $value;

  @override
  KeyboardOptions get $reified => $value;

  /// Wrap a [KeyboardOptions] in a [$KeyboardOptions]
  $KeyboardOptions.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'enableArrowKeysPanning':
        final _enableArrowKeysPanning = $value.enableArrowKeysPanning;
        return $bool(_enableArrowKeysPanning);

      case 'enableWASDPanning':
        final _enableWASDPanning = $value.enableWASDPanning;
        return $bool(_enableWASDPanning);

      case 'enableQERotating':
        final _enableQERotating = $value.enableQERotating;
        return $bool(_enableQERotating);

      case 'enableRFZooming':
        final _enableRFZooming = $value.enableRFZooming;
        return $bool(_enableRFZooming);

      case 'maxPanVelocity':
        final _maxPanVelocity = $value.maxPanVelocity;
        return _maxPanVelocity == null
            ? const $null()
            : $Function((runtime, target, args) {
                final funcResult = _maxPanVelocity(args[0]!.$value);
                return $double(funcResult);
              });

      case 'panLeapVelocityMultiplier':
        final _panLeapVelocityMultiplier = $value.panLeapVelocityMultiplier;
        return $double(_panLeapVelocityMultiplier);

      case 'maxZoomVelocity':
        final _maxZoomVelocity = $value.maxZoomVelocity;
        return $double(_maxZoomVelocity);

      case 'zoomLeapVelocityMultiplier':
        final _zoomLeapVelocityMultiplier = $value.zoomLeapVelocityMultiplier;
        return $double(_zoomLeapVelocityMultiplier);

      case 'maxRotateVelocity':
        final _maxRotateVelocity = $value.maxRotateVelocity;
        return $double(_maxRotateVelocity);

      case 'rotateLeapVelocityMultiplier':
        final _rotateLeapVelocityMultiplier =
            $value.rotateLeapVelocityMultiplier;
        return $double(_rotateLeapVelocityMultiplier);

      case 'animationCurveDuration':
        final _animationCurveDuration = $value.animationCurveDuration;
        return $Duration.wrap(_animationCurveDuration);

      case 'animationCurveReverseDuration':
        final _animationCurveReverseDuration =
            $value.animationCurveReverseDuration;
        return _animationCurveReverseDuration == null
            ? const $null()
            : $Duration.wrap(_animationCurveReverseDuration);

      case 'animationCurveCurve':
        final _animationCurveCurve = $value.animationCurveCurve;
        return $Curve.wrap(_animationCurveCurve);

      case 'performLeapTriggerDuration':
        final _performLeapTriggerDuration = $value.performLeapTriggerDuration;
        return _performLeapTriggerDuration == null
            ? const $null()
            : $Duration.wrap(_performLeapTriggerDuration);

      case 'leapMaxOfCurveComponent':
        final _leapMaxOfCurveComponent = $value.leapMaxOfCurveComponent;
        return $double(_leapMaxOfCurveComponent);

      case 'focusNode':
        final _focusNode = $value.focusNode;
        return _focusNode == null ? const $null() : $FocusNode.wrap(_focusNode);

      case 'autofocus':
        final _autofocus = $value.autofocus;
        return $bool(_autofocus);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
