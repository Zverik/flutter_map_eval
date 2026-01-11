import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval function wrapper binding for [showConfirmationDialog]
class $showConfirmationDialogFn implements EvalCallable {
  const $showConfirmationDialogFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/alert_dialog/show_confirmation_dialog.dart',
      'showConfirmationDialog',
      const $showConfirmationDialogFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    'package:adaptive_dialog/src/alert_dialog/show_confirmation_dialog.dart',
    'showConfirmationDialog',
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
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          false,
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
          'okLabel',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'cancelLabel',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'contentMaxHeight',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.double, []),
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
          'initialSelectedActionKey',
          BridgeTypeAnnotation(BridgeTypeRef.ref('T'), nullable: true),
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
          'useRootNavigator',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'shrinkWrap',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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

        BridgeParameter(
          'toggleable',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),
      ],
      params: [],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = showConfirmationDialog(
      context: args[0]!.$value as BuildContext,
      title: args[1]!.$value,
      message: args[2]?.$value,
      okLabel: args[3]?.$value,
      cancelLabel: args[4]?.$value,
      contentMaxHeight: args[5]?.$value,
      actions: (args[6]?.$reified ?? const [] as List?)?.cast(),
      initialSelectedActionKey: args[7]?.$value,
      barrierDismissible: args[8]?.$value ?? true,
      style: args[9]?.$value,
      useRootNavigator: args[10]?.$value ?? true,
      shrinkWrap: args[11]?.$value ?? true,
      fullyCapitalizedForMaterial: args[12]?.$value ?? false,
      canPop: args[13]?.$value ?? true,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        (args[14]! as EvalCallable?)?.call(runtime, null, [
          $bool(didPop),
          if (result == null) const $null() else runtime.wrapAlways(result),
        ]);
      },
      builder: (BuildContext context, Widget child) {
        return (args[15]! as EvalCallable?)?.call(runtime, null, [
          $BuildContext.wrap(context),
          $Widget.wrap(child),
        ])?.$value;
      },
      routeSettings: args[16]?.$value,
      toggleable: args[17]?.$value ?? true,
    );
    return $Future.wrap(
      result.then((e) => e == null ? const $null() : runtime.wrapAlways(e)),
    );
  }
}
