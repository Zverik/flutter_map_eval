import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:flutter_eval/painting.dart';

/// dart_eval wrapper binding for [SheetAction]
class $SheetAction implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/modal_action_sheet/sheet_action.dart',
      'SheetAction.',
      $SheetAction.$new,
    );
  }

  /// Compile-time type specification of [$SheetAction]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/modal_action_sheet/sheet_action.dart',
    'SheetAction',
  );

  /// Compile-time type declaration of [$SheetAction]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$SheetAction]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, generics: {'T': BridgeGenericParam()}),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'label',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
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

            BridgeParameter(
              'key',
              BridgeTypeAnnotation(BridgeTypeRef.ref('T'), nullable: true),
              true,
            ),

            BridgeParameter(
              'icon',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/widgets/icon_data.dart',
                    'IconData',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
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
      'label': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'icon': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/widgets/icon_data.dart',
              'IconData',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'key': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef.ref('T'), nullable: true),
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

  /// Wrapper for the [SheetAction.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $SheetAction.wrap(
      SheetAction(
        label: args[0]!.$value,
        textStyle: args[1]?.$value ?? const TextStyle(),
        key: args[2]?.$value,
        icon: args[3]?.$value,
        isDefaultAction: args[4]?.$value ?? false,
        isDestructiveAction: args[5]?.$value ?? false,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final SheetAction $value;

  @override
  SheetAction get $reified => $value;

  /// Wrap a [SheetAction] in a [$SheetAction]
  $SheetAction.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'label':
        return $String($value.label);

      case 'icon':
        final _icon = $value.icon;
        return _icon == null ? const $null() : $IconData.wrap(_icon);

      case 'key':
        final _key = $value.key;
        return _key == null ? const $null() : runtime.wrapAlways(_key);

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
