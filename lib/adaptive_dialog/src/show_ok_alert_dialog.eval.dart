import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/widgets.dart';

import 'alert_dialog_action.eval.dart';

/// dart_eval function wrapper binding for [showOkAlertDialog]
class $showOkAlertDialogFn implements EvalCallable {
  const $showOkAlertDialogFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/alert_dialog/show_ok_alert_dialog.dart',
      'showOkAlertDialog',
      const $showOkAlertDialogFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    'package:adaptive_dialog/src/alert_dialog/show_ok_alert_dialog.dart',
    'showOkAlertDialog',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
                'OkCancelResult',
              ),
              [],
            ),
          ),
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
          'okLabel',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'barrierDismissible',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'alertStyle',
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
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:adaptive_dialog/src/alert_dialog/alert_dialog_action.dart',
                          'OkCancelResult',
                        ),
                        [],
                      ),
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
      ],
      params: [],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = showOkAlertDialog(
      context: args[0]!.$value,
      title: args[1]?.$value,
      message: args[2]?.$value,
      okLabel: args[3]?.$value,
      barrierDismissible: args[4]?.$value ?? true,
      alertStyle: args[5]?.$value,
      style: args[6]?.$value,
      useActionSheetForCupertino: args[7]?.$value ?? false,
      useActionSheetForIOS: args[8]?.$value ?? false,
      useRootNavigator: args[9]?.$value ?? true,
      actionsOverflowDirection: args[10]?.$value ?? VerticalDirection.up,
      fullyCapitalizedForMaterial: args[11]?.$value ?? false,
      canPop: args[12]?.$value ?? true,
      onPopInvokedWithResult: (bool didPop, OkCancelResult? result) {
        (args[13]! as EvalCallable?)?.call(runtime, null, [
          $bool(didPop),
          if (result == null) const $null() else $OkCancelResult.wrap(result),
        ]);
      },
      builder: (BuildContext context, Widget child) {
        return (args[14]! as EvalCallable?)?.call(runtime, null, [
          $BuildContext.wrap(context),
          $Widget.wrap(child),
        ])?.$value;
      },
      routeSettings: args[15]?.$value,
    );
    return $Future.wrap(result.then((e) => $OkCancelResult.wrap(e)));
  }
}
