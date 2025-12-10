import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/ui.dart';
import 'package:flutter_map/flutter_map.dart';

/// dart_eval wrapper binding for [TapPosition]
class $TapPosition implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
      'TapPosition.',
      $TapPosition.$new,
    );
  }

  /// Compile-time type specification of [$TapPosition]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
    'TapPosition',
  );

  /// Compile-time type declaration of [$TapPosition]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$TapPosition]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'global',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),

            BridgeParameter(
              'relative',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
                nullable: true,
              ),
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
    fields: {
      'global': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
        ),
        isStatic: false,
      ),

      'relative': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [TapPosition.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $TapPosition.wrap(TapPosition(args[0]!.$value, args[1]!.$value));
  }

  final $Instance _superclass;

  @override
  final TapPosition $value;

  @override
  TapPosition get $reified => $value;

  /// Wrap a [TapPosition] in a [$TapPosition]
  $TapPosition.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'global':
        final _global = $value.global;
        return $Offset.wrap(_global);

      case 'relative':
        final _relative = $value.relative;
        return _relative == null ? const $null() : $Offset.wrap(_relative);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
