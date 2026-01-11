import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval function wrapper binding for [showAlertDialog]
class $showAlertDialogFn implements EvalCallable {
  const $showAlertDialogFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/alert_dialog/show_alert_dialog.dart',
      'showAlertDialog',
      const $showAlertDialogFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    'package:adaptive_dialog/src/alert_dialog/show_alert_dialog.dart',
    'showAlertDialog',
    BridgeFunctionDef(
      generics: {'T': BridgeGenericParam()},
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef.ref('T'), nullable: true),
        ]),
      ),
      namedParams: [
        BridgeParameter(
          'context',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter/src/widgets/framework.dart',
                'BuildContext',
              ),
              [],
            ),
          ),
          false,
        ),

        BridgeParameter(
          'title',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'message',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'actions',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
                    'AlertDialogAction',
                  ),
                  [BridgeTypeAnnotation(BridgeTypeRef.ref('T'))],
                ),
              ),
            ]),
          ),
          true,
        ),

        BridgeParameter(
          'barrierDismissible',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'style',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:adaptive_dialog/src/adaptive_style.dart',
                'AdaptiveStyle',
              ),
              [],
            ),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'useActionSheetForCupertino',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'useActionSheetForIOS',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'useRootNavigator',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'actionsOverflowDirection',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter/src/painting/basic_types.dart',
                'VerticalDirection',
              ),
              [],
            ),
          ),
          true,
        ),

        BridgeParameter(
          'fullyCapitalizedForMaterial',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'canPop',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'onPopInvokedWithResult',
          BridgeTypeAnnotation(
            BridgeTypeRef.genericFunction(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.voidType),
                ),
                params: [
                  BridgeParameter(
                    'didPop',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
                    false,
                  ),

                  BridgeParameter(
                    'result',
                    BridgeTypeAnnotation(
                      BridgeTypeRef.ref('T'),
                      nullable: true,
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
          'builder',
          BridgeTypeAnnotation(
            BridgeTypeRef.genericFunction(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                  BridgeTypeRef(
                    BridgeTypeSpec(
                      'package:flutter/src/widgets/framework.dart',
                      'Widget',
                    ),
                    [],
                  ),
                ),
                params: [
                  BridgeParameter(
                    'context',
                    BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter/src/widgets/framework.dart',
                          'BuildContext',
                        ),
                        [],
                      ),
                    ),
                    false,
                  ),

                  BridgeParameter(
                    'child',
                    BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter/src/widgets/framework.dart',
                          'Widget',
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
          'macOSApplicationIcon',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter/src/widgets/framework.dart',
                'Widget',
              ),
              [],
            ),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'routeSettings',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter/src/widgets/navigator.dart',
                'RouteSettings',
              ),
              [],
            ),
            nullable: true,
          ),
          true,
        ),
      ],
      params: [],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = showAlertDialog(
      context: args[0]!.$value,
      title: args[1]?.$value,
      message: args[2]?.$value,
      actions: (args[3]?.$reified ?? const [] as List?)?.cast(),
      barrierDismissible: args[4]?.$value ?? true,
      style: args[5]?.$value,
      useActionSheetForCupertino: args[6]?.$value ?? false,
      useActionSheetForIOS: args[7]?.$value ?? false,
      useRootNavigator: args[8]?.$value ?? true,
      actionsOverflowDirection: args[9]?.$value ?? VerticalDirection.up,
      fullyCapitalizedForMaterial: args[10]?.$value ?? false,
      canPop: args[11]?.$value ?? true,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        (args[12]! as EvalCallable?)?.call(runtime, null, [
          $bool(didPop),
          if (result == null) const $null() else runtime.wrapAlways(result),
        ]);
      },
      builder: (BuildContext context, Widget child) {
        return (args[13]! as EvalCallable?)?.call(runtime, null, [
          $BuildContext.wrap(context),
          $Widget.wrap(child),
        ])?.$value;
      },
      macOSApplicationIcon: args[14]?.$value,
      routeSettings: args[15]?.$value,
    );
    return $Future.wrap(
      result.then((e) => e == null ? const $null() : runtime.wrapAlways(e)),
    );
  }
}

/// dart_eval enum wrapper binding for [OkCancelAlertDefaultType]
class $OkCancelAlertDefaultType implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:adaptive_dialog/src/alert_dialog/show_alert_dialog.dart',
      'OkCancelAlertDefaultType',
      $OkCancelAlertDefaultType._$values,
    );

    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/alert_dialog/show_alert_dialog.dart',
      'OkCancelAlertDefaultType.values*g',
      $OkCancelAlertDefaultType.$values,
    );
  }

  /// Compile-time type specification of [$OkCancelAlertDefaultType]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/alert_dialog/show_alert_dialog.dart',
    'OkCancelAlertDefaultType',
  );

  /// Compile-time type declaration of [$OkCancelAlertDefaultType]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$OkCancelAlertDefaultType]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['ok', 'cancel'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'ok': $OkCancelAlertDefaultType.wrap(OkCancelAlertDefaultType.ok),
    'cancel': $OkCancelAlertDefaultType.wrap(OkCancelAlertDefaultType.cancel),
  };

  /// Wrapper for the [OkCancelAlertDefaultType.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = OkCancelAlertDefaultType.values;
    return $List.view(value, (e) => $OkCancelAlertDefaultType.wrap(e));
  }

  final $Instance _superclass;

  @override
  final OkCancelAlertDefaultType $value;

  @override
  OkCancelAlertDefaultType get $reified => $value;

  /// Wrap a [OkCancelAlertDefaultType] in a [$OkCancelAlertDefaultType]
  $OkCancelAlertDefaultType.wrap(this.$value) : _superclass = $Object($value);

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
