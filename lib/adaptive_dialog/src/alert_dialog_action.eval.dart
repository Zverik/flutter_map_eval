
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/painting.dart';

/// dart_eval wrapper binding for [AlertDialogAction]
class $AlertDialogAction implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
      'AlertDialogAction.',
      $AlertDialogAction.$new,
    );
  }

  /// Compile-time type specification of [$AlertDialogAction]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
    'AlertDialogAction',
  );

  /// Compile-time type declaration of [$AlertDialogAction]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$AlertDialogAction]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, generics: {'T': BridgeGenericParam()}),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(BridgeTypeRef.ref('T')),
              false,
            ),

            BridgeParameter(
              'label',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'isDefaultAction',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'isDestructiveAction',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'textStyle',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/text_style.dart',
                    'TextStyle',
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

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'key': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef.ref('T')),
        isStatic: false,
      ),

      'label': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'isDefaultAction': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'isDestructiveAction': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'textStyle': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/painting/text_style.dart',
              'TextStyle',
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

  /// Wrapper for the [AlertDialogAction.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $AlertDialogAction.wrap(
      AlertDialogAction(
        key: args[0]!.$value,
        label: args[1]!.$value,
        isDefaultAction: args[2]?.$value ?? false,
        isDestructiveAction: args[3]?.$value ?? false,
        textStyle: args[4]?.$value ?? const TextStyle(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final AlertDialogAction $value;

  @override
  AlertDialogAction get $reified => $value;

  /// Wrap a [AlertDialogAction] in a [$AlertDialogAction]
  $AlertDialogAction.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'key':
        return runtime.wrapAlways($value.key);

      case 'label':
        return $String($value.label);

      case 'isDefaultAction':
        return $bool($value.isDefaultAction);

      case 'isDestructiveAction':
        return $bool($value.isDestructiveAction);

      case 'textStyle':
        return $TextStyle.wrap($value.textStyle);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [OkCancelResult]
class $OkCancelResult implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
      'OkCancelResult',
      $OkCancelResult._$values,
    );

    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
      'OkCancelResult.values*g',
      $OkCancelResult.$values,
    );
  }

  /// Compile-time type specification of [$OkCancelResult]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
    'OkCancelResult',
  );

  /// Compile-time type declaration of [$OkCancelResult]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$OkCancelResult]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['ok', 'cancel'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'ok': $OkCancelResult.wrap(OkCancelResult.ok),
    'cancel': $OkCancelResult.wrap(OkCancelResult.cancel),
  };

  /// Wrapper for the [OkCancelResult.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = OkCancelResult.values;
    return $List.view(value, (e) => $OkCancelResult.wrap(e));
  }

  final $Instance _superclass;

  @override
  final OkCancelResult $value;

  @override
  OkCancelResult get $reified => $value;

  /// Wrap a [OkCancelResult] in a [$OkCancelResult]
  $OkCancelResult.wrap(this.$value) : _superclass = $Object($value);

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
