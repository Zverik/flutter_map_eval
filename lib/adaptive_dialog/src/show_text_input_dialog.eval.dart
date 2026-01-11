// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval function wrapper binding for [showTextInputDialog]
class $showTextInputDialogFn implements EvalCallable {
  const $showTextInputDialogFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/text_input_dialog/show_text_input_dialog.dart',
      'showTextInputDialog',
      const $showTextInputDialogFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    'package:adaptive_dialog/src/text_input_dialog/show_text_input_dialog.dart',
    'showTextInputDialog',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
            nullable: true,
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
          'textFields',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:adaptive_dialog/src/text_input_dialog/show_text_input_dialog.dart',
                    'DialogTextField',
                  ),
                  [],
                ),
              ),
            ]),
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
    final result = showTextInputDialog(
      context: args[0]!.$value,
      textFields: (args[1]!.$reified as List).cast(),
      title: args[2]?.$value,
      message: args[3]?.$value,
      okLabel: args[4]?.$value,
      cancelLabel: args[5]?.$value,
      isDestructiveAction: args[6]?.$value ?? false,
      barrierDismissible: args[7]?.$value ?? true,
      style: args[8]?.$value,
      useRootNavigator: args[9]?.$value ?? true,
      actionsOverflowDirection: args[10]?.$value ?? VerticalDirection.up,
      fullyCapitalizedForMaterial: args[11]?.$value ?? false,
      canPop: args[12]?.$value ?? true,
      onPopInvokedWithResult: (bool didPop, List<String>? result) {
        (args[13]! as EvalCallable?)?.call(runtime, null, [
          $bool(didPop),
          if (result == null)
            const $null()
          else
            $List.view(result, (e) => $String(e)),
        ]);
      },
      autoSubmit: args[14]?.$value ?? false,
      builder: (BuildContext context, Widget child) {
        return (args[15]! as EvalCallable?)?.call(runtime, null, [
          $BuildContext.wrap(context),
          $Widget.wrap(child),
        ])?.$value;
      },
      routeSettings: args[16]?.$value,
    );
    return $Future.wrap(
      result.then(
        (e) => e == null ? const $null() : $List.view(e, (e) => $String(e)),
      ),
    );
  }
}

/// dart_eval wrapper binding for [DialogTextField]
class $DialogTextField implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/text_input_dialog/show_text_input_dialog.dart',
      'DialogTextField.',
      $DialogTextField.$new,
    );
  }

  /// Compile-time type specification of [$DialogTextField]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/text_input_dialog/show_text_input_dialog.dart',
    'DialogTextField',
  );

  /// Compile-time type declaration of [$DialogTextField]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$DialogTextField]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'initialText',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
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
              'obscureText',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'validator',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.string, []),
                      nullable: true,
                    ),
                    params: [
                      BridgeParameter(
                        'value',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.string, []),
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
              'keyboardType',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/services/text_input.dart',
                    'TextInputType',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'textCapitalization',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/services/text_input.dart',
                    'TextCapitalization',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'prefixText',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'suffixText',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'minLines',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLines',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'maxLength',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'autocorrect',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'spellCheckConfiguration',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/widgets/spell_check.dart',
                    'SpellCheckConfiguration',
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
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'initialText': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'hintText': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'obscureText': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'validator': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              params: [
                BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.string, []),
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
        isStatic: false,
      ),

      'keyboardType': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/services/text_input.dart',
              'TextInputType',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'textCapitalization': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/services/text_input.dart',
              'TextCapitalization',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'prefixText': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'suffixText': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'minLines': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      'maxLines': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'maxLength': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      'autocorrect': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'spellCheckConfiguration': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/widgets/spell_check.dart',
              'SpellCheckConfiguration',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [DialogTextField.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $DialogTextField.wrap(
      DialogTextField(
        initialText: args[0]?.$value,
        hintText: args[1]?.$value,
        obscureText: args[2]?.$value ?? false,
        validator: (String? value) {
          return (args[3]! as EvalCallable?)?.call(runtime, null, [
            if (value == null) const $null() else $String(value),
          ])?.$value;
        },
        keyboardType: args[4]?.$value,
        textCapitalization: args[5]?.$value ?? TextCapitalization.none,
        prefixText: args[6]?.$value,
        suffixText: args[7]?.$value,
        minLines: args[8]?.$value,
        maxLines: args[9]?.$value ?? 1,
        maxLength: args[10]?.$value,
        autocorrect: args[11]?.$value ?? true,
        spellCheckConfiguration: args[12]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final DialogTextField $value;

  @override
  DialogTextField get $reified => $value;

  /// Wrap a [DialogTextField] in a [$DialogTextField]
  $DialogTextField.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'initialText':
        final _initialText = $value.initialText;
        return _initialText == null ? const $null() : $String(_initialText);

      case 'hintText':
        final _hintText = $value.hintText;
        return _hintText == null ? const $null() : $String(_hintText);

      case 'obscureText':
        final _obscureText = $value.obscureText;
        return $bool(_obscureText);

      case 'validator':
        final _validator = $value.validator;
        return _validator == null
            ? const $null()
            : $Function((runtime, target, args) {
                final funcResult = _validator(args[0]?.$value);
                return funcResult == null ? const $null() : $String(funcResult);
              });

      case 'keyboardType':
        final _keyboardType = $value.keyboardType;
        return _keyboardType == null
            ? const $null()
            : runtime.wrapAlways(_keyboardType);

      case 'textCapitalization':
        final _textCapitalization = $value.textCapitalization;
        return runtime.wrapAlways(_textCapitalization);

      case 'prefixText':
        final _prefixText = $value.prefixText;
        return _prefixText == null ? const $null() : $String(_prefixText);

      case 'suffixText':
        final _suffixText = $value.suffixText;
        return _suffixText == null ? const $null() : $String(_suffixText);

      case 'minLines':
        final _minLines = $value.minLines;
        return _minLines == null ? const $null() : $int(_minLines);

      case 'maxLines':
        final _maxLines = $value.maxLines;
        return $int(_maxLines);

      case 'maxLength':
        final _maxLength = $value.maxLength;
        return _maxLength == null ? const $null() : $int(_maxLength);

      case 'autocorrect':
        final _autocorrect = $value.autocorrect;
        return $bool(_autocorrect);

      case 'spellCheckConfiguration':
        final _spellCheckConfiguration = $value.spellCheckConfiguration;
        return _spellCheckConfiguration == null
            ? const $null()
            : runtime.wrapAlways(_spellCheckConfiguration);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
