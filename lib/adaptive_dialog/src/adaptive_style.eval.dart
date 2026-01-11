import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval enum wrapper binding for [AdaptiveStyle]
class $AdaptiveStyle implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:adaptive_dialog/src/adaptive_style.dart',
      'AdaptiveStyle',
      $AdaptiveStyle._$values,
    );

    runtime.registerBridgeFunc(
      'package:adaptive_dialog/src/adaptive_style.dart',
      'AdaptiveStyle.values*g',
      $AdaptiveStyle.$values,
    );
  }

  /// Compile-time type specification of [$AdaptiveStyle]
  static const $spec = BridgeTypeSpec(
    'package:adaptive_dialog/src/adaptive_style.dart',
    'AdaptiveStyle',
  );

  /// Compile-time type declaration of [$AdaptiveStyle]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$AdaptiveStyle]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['adaptive', 'material', 'cupertino', 'iOS', 'macOS'],

    methods: {
      'isCupertinoStyle': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'theme',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/material/theme_data.dart',
                    'ThemeData',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'isMaterial': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'theme',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/material/theme_data.dart',
                    'ThemeData',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'effectiveStyle': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:adaptive_dialog/src/adaptive_style.dart',
                'AdaptiveStyle',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'data',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/material/theme_data.dart',
                    'ThemeData',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {
      'label': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
  );

  static final _$values = {
    'adaptive': $AdaptiveStyle.wrap(AdaptiveStyle.adaptive),
    'material': $AdaptiveStyle.wrap(AdaptiveStyle.material),
    'cupertino': $AdaptiveStyle.wrap(AdaptiveStyle.cupertino),
    'iOS': $AdaptiveStyle.wrap(AdaptiveStyle.iOS),
    'macOS': $AdaptiveStyle.wrap(AdaptiveStyle.macOS),
  };

  /// Wrapper for the [AdaptiveStyle.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = AdaptiveStyle.values;
    return $List.view(value, (e) => $AdaptiveStyle.wrap(e));
  }

  final $Instance _superclass;

  @override
  final AdaptiveStyle $value;

  @override
  AdaptiveStyle get $reified => $value;

  /// Wrap a [AdaptiveStyle] in a [$AdaptiveStyle]
  $AdaptiveStyle.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'label':
        return $String($value.label);
      case 'isCupertinoStyle':
        return __isCupertinoStyle;

      case 'isMaterial':
        return __isMaterial;

      case 'effectiveStyle':
        return __effectiveStyle;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __isCupertinoStyle = $Function(_isCupertinoStyle);
  static $Value? _isCupertinoStyle(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $AdaptiveStyle;
    final result = self.$value.isCupertinoStyle(args[0]!.$value);
    return $bool(result);
  }

  static const $Function __isMaterial = $Function(_isMaterial);
  static $Value? _isMaterial(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $AdaptiveStyle;
    final result = self.$value.isMaterial(args[0]!.$value);
    return $bool(result);
  }

  static const $Function __effectiveStyle = $Function(_effectiveStyle);
  static $Value? _effectiveStyle(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $AdaptiveStyle;
    final result = self.$value.effectiveStyle(args[0]!.$value);
    return $AdaptiveStyle.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
