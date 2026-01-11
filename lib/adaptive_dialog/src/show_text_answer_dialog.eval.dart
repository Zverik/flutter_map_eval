import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval function wrapper binding for [showTextAnswerDialog]
class $showTextAnswerDialogFn implements EvalCallable {
  const $showTextAnswerDialogFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/text_input_dialog/show_text_answer_dialog.dart',
      'showTextAnswerDialog',
      const $showTextAnswerDialogFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    'package:adaptive_dialog/src/text_input_dialog/show_text_answer_dialog.dart',
    'showTextAnswerDialog',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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
          'keyword',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
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
          'cancelLabel',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'isDestructiveAction',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'barrierDismissible',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'hintText',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'retryTitle',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'retryMessage',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'retryOkLabel',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          true,
        ),

        BridgeParameter(
          'retryCancelLabel',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
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
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.string, []),
                        ),
                      ]),
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
          'autoSubmit',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'isCaseSensitive',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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
      ],
      params: [],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = showTextAnswerDialog(
      context: args[0]!.$value,
      keyword: args[1]!.$value,
      title: args[2]?.$value,
      message: args[3]?.$value,
      okLabel: args[4]?.$value,
      cancelLabel: args[5]?.$value,
      isDestructiveAction: args[6]?.$value ?? false,
      barrierDismissible: args[7]?.$value ?? true,
      hintText: args[8]?.$value,
      retryTitle: args[9]?.$value,
      retryMessage: args[10]?.$value,
      retryOkLabel: args[11]?.$value,
      retryCancelLabel: args[12]?.$value,
      style: args[13]?.$value,
      useRootNavigator: args[14]?.$value ?? true,
      actionsOverflowDirection: args[15]?.$value ?? VerticalDirection.up,
      fullyCapitalizedForMaterial: args[16]?.$value ?? false,
      canPop: args[17]?.$value ?? true,
      onPopInvokedWithResult: (bool didPop, List<String>? result) {
        (args[18]! as EvalCallable?)?.call(runtime, null, [
          $bool(didPop),
          if (result == null)
            const $null()
          else
            $List.view(result, (e) => $String(e)),
        ]);
      },
      autoSubmit: args[19]?.$value ?? false,
      isCaseSensitive: args[20]?.$value ?? true,
      builder: (BuildContext context, Widget child) {
        return (args[21]! as EvalCallable?)?.call(runtime, null, [
          $BuildContext.wrap(context),
          $Widget.wrap(child),
        ])?.$value;
      },
    );
    return $Future.wrap(result.then((e) => $bool(e)));
  }
}
