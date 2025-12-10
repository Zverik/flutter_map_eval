import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/services.dart' show LogicalKeyboardKey;
import 'package:flutter_eval/services.dart';
import 'package:flutter_map/flutter_map.dart';

/// dart_eval enum wrapper binding for [CursorRotationBehaviour]
class $CursorRotationBehaviour implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
      'CursorRotationBehaviour',
      $CursorRotationBehaviour._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
      'CursorRotationBehaviour.values*g',
      $CursorRotationBehaviour.$values,
    );
  }

  /// Compile-time type specification of [$CursorRotationBehaviour]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
    'CursorRotationBehaviour',
  );

  /// Compile-time type declaration of [$CursorRotationBehaviour]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CursorRotationBehaviour]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['setNorth', 'offset'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'setNorth': $CursorRotationBehaviour.wrap(CursorRotationBehaviour.setNorth),
    'offset': $CursorRotationBehaviour.wrap(CursorRotationBehaviour.offset),
  };

  /// Wrapper for the [CursorRotationBehaviour.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = CursorRotationBehaviour.values;
    return $List.view(value, (e) => $CursorRotationBehaviour.wrap(e));
  }

  final $Instance _superclass;

  @override
  final CursorRotationBehaviour $value;

  @override
  CursorRotationBehaviour get $reified => $value;

  /// Wrap a [CursorRotationBehaviour] in a [$CursorRotationBehaviour]
  $CursorRotationBehaviour.wrap(this.$value) : _superclass = $Object($value);

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

/// dart_eval wrapper binding for [CursorKeyboardRotationOptions]
class $CursorKeyboardRotationOptions implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
      'CursorKeyboardRotationOptions.',
      $CursorKeyboardRotationOptions.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
      'CursorKeyboardRotationOptions.disabled',
      $CursorKeyboardRotationOptions.$disabled,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
      'CursorKeyboardRotationOptions.defaultTriggerKeys*g',
      $CursorKeyboardRotationOptions.$defaultTriggerKeys,
    );
  }

  /// Compile-time type specification of [$CursorKeyboardRotationOptions]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
    'CursorKeyboardRotationOptions',
  );

  /// Compile-time type declaration of [$CursorKeyboardRotationOptions]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CursorKeyboardRotationOptions]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'isKeyTrigger',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.bool, []),
                    ),
                    params: [
                      BridgeParameter(
                        'key',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter/src/services/keyboard_key.g.dart',
                              'LogicalKeyboardKey',
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
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'behaviour',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
                    'CursorRotationBehaviour',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'setNorthOnClick',
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
      'isKeyTrigger': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              params: [
                BridgeParameter(
                  'key',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter/src/services/keyboard_key.g.dart',
                        'LogicalKeyboardKey',
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
          nullable: true,
        ),
        isStatic: false,
      ),

      'behaviour': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/options/cursor_keyboard_rotation.dart',
              'CursorRotationBehaviour',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'setNorthOnClick': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'defaultTriggerKeys': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.set, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter/src/services/keyboard_key.g.dart',
                  'LogicalKeyboardKey',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [CursorKeyboardRotationOptions.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $CursorKeyboardRotationOptions.wrap(
      CursorKeyboardRotationOptions(
        isKeyTrigger: (LogicalKeyboardKey key) {
          return (args[0]! as EvalCallable?)?.call(runtime, null, [
            $LogicalKeyboardKey.wrap(key),
          ])?.$value;
        },
        behaviour: args[1]?.$value ?? CursorRotationBehaviour.offset,
        setNorthOnClick: args[2]?.$value ?? true,
      ),
    );
  }

  /// Wrapper for the [CursorKeyboardRotationOptions.disabled] constructor
  static $Value? $disabled(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $CursorKeyboardRotationOptions.wrap(
      CursorKeyboardRotationOptions.disabled(),
    );
  }

  /// Wrapper for the [CursorKeyboardRotationOptions.defaultTriggerKeys] getter
  static $Value? $defaultTriggerKeys(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = CursorKeyboardRotationOptions.defaultTriggerKeys;
    return $Set.wrap(value);
  }

  final $Instance _superclass;

  @override
  final CursorKeyboardRotationOptions $value;

  @override
  CursorKeyboardRotationOptions get $reified => $value;

  /// Wrap a [CursorKeyboardRotationOptions] in a [$CursorKeyboardRotationOptions]
  $CursorKeyboardRotationOptions.wrap(this.$value)
    : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'isKeyTrigger':
        final _isKeyTrigger = $value.isKeyTrigger;
        return _isKeyTrigger == null
            ? const $null()
            : $Function((runtime, target, args) {
                final funcResult = _isKeyTrigger(args[0]!.$value);
                return $bool(funcResult);
              });

      case 'behaviour':
        return $CursorRotationBehaviour.wrap($value.behaviour);

      case 'setNorthOnClick':
        return $bool($value.setNorthOnClick);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
