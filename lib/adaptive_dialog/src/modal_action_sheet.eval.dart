import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval function wrapper binding for [showModalActionSheet]
class $showModalActionSheetFn implements EvalCallable {
  const $showModalActionSheetFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/modal_action_sheet/modal_action_sheet.dart',
      'showModalActionSheet',
      const $showModalActionSheetFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    'package:adaptive_dialog/src/modal_action_sheet/modal_action_sheet.dart',
    'showModalActionSheet',
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
                    'package:adaptive_dialog/src/modal_action_sheet/sheet_action.dart',
                    'SheetAction',
                  ),
                  [BridgeTypeAnnotation(BridgeTypeRef.ref('T'))],
                ),
              ),
            ]),
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
          'isDismissible',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'useRootNavigator',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          true,
        ),

        BridgeParameter(
          'materialConfiguration',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:adaptive_dialog/src/modal_action_sheet/modal_action_sheet.dart',
                'MaterialModalActionSheetConfiguration',
              ),
              [],
            ),
            nullable: true,
          ),
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
      ],
      params: [],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = showModalActionSheet(
      context: args[0]!.$value,
      title: args[1]?.$value,
      message: args[2]?.$value,
      actions: (args[3]?.$reified ?? const [] as List?)?.cast(),
      cancelLabel: args[4]?.$value,
      style: args[5]?.$value,
      isDismissible: args[6]?.$value ?? true,
      useRootNavigator: args[7]?.$value ?? true,
      materialConfiguration: args[8]?.$value,
      canPop: args[9]?.$value ?? true,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        (args[10]! as EvalCallable?)?.call(runtime, null, [
          $bool(didPop),
          if (result == null) const $null() else runtime.wrapAlways(result),
        ]);
      },
      builder: (BuildContext context, Widget child) {
        return (args[11]! as EvalCallable?)?.call(runtime, null, [
          $BuildContext.wrap(context),
          $Widget.wrap(child),
        ])?.$value;
      },
      routeSettings: args[12]?.$value,
    );
    return $Future.wrap(
      result.then((e) => e == null ? const $null() : runtime.wrapAlways(e)),
    );
  }
}

/// dart_eval wrapper binding for [MaterialModalActionSheetConfiguration]
class $MaterialModalActionSheetConfiguration implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/modal_action_sheet/modal_action_sheet.dart',
      'MaterialModalActionSheetConfiguration.',
      $MaterialModalActionSheetConfiguration.$new,
    );
  }

  /// Compile-time type specification of [$MaterialModalActionSheetConfiguration]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/modal_action_sheet/modal_action_sheet.dart',
    'MaterialModalActionSheetConfiguration',
  );

  /// Compile-time type declaration of [$MaterialModalActionSheetConfiguration]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MaterialModalActionSheetConfiguration]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'initialChildSize',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'minChildSize',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'maxChildSize',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
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
      'initialChildSize': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'minChildSize': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'maxChildSize': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MaterialModalActionSheetConfiguration.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MaterialModalActionSheetConfiguration.wrap(
      MaterialModalActionSheetConfiguration(
        initialChildSize: args[0]?.$value ?? 0.5,
        minChildSize: args[1]?.$value ?? 0.25,
        maxChildSize: args[2]?.$value ?? 0.9,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MaterialModalActionSheetConfiguration $value;

  @override
  MaterialModalActionSheetConfiguration get $reified => $value;

  /// Wrap a [MaterialModalActionSheetConfiguration] in a [$MaterialModalActionSheetConfiguration]
  $MaterialModalActionSheetConfiguration.wrap(this.$value)
    : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'initialChildSize':
        return $double($value.initialChildSize);

      case 'minChildSize':
        return $double($value.minChildSize);

      case 'maxChildSize':
        return $double($value.maxChildSize);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
