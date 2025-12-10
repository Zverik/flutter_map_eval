import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart' show Alignment, Color, TextStyle, EdgeInsets;
import 'package:flutter_eval/foundation.dart';
import 'package:flutter_eval/ui.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:flutter_eval/painting.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [Scalebar]
class $Scalebar implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/scalebar/scalebar.dart',
      'Scalebar.',
      $Scalebar.$new,
    );
  }

  /// Compile-time type specification of [$Scalebar]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/scalebar/scalebar.dart',
    'Scalebar',
  );

  /// Compile-time type declaration of [$Scalebar]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Scalebar]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $StatelessWidget$bridge.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation($Key.$type, nullable: true),
              true,
            ),

            BridgeParameter(
              'alignment',
              BridgeTypeAnnotation($Alignment.$type),
              true,
            ),

            BridgeParameter(
              'textStyle',
              BridgeTypeAnnotation($TextStyle.$type, nullable: true),
              true,
            ),

            BridgeParameter(
              'lineColor',
              BridgeTypeAnnotation($Color.$type),
              true,
            ),

            BridgeParameter(
              'strokeWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'lineHeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation($EdgeInsets.$type),
              true,
            ),

            BridgeParameter(
              'length',
              BridgeTypeAnnotation($ScalebarLength.$type),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'build': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($Widget.$type),
          namedParams: [],
          params: [
            BridgeParameter(
              'context',
              BridgeTypeAnnotation($BuildContext.$type),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'alignment': BridgeFieldDef(
        BridgeTypeAnnotation($Alignment.$type),
        isStatic: false,
      ),

      'textStyle': BridgeFieldDef(
        BridgeTypeAnnotation($TextStyle.$type, nullable: true),
        isStatic: false,
      ),

      'lineColor': BridgeFieldDef(
        BridgeTypeAnnotation($Color.$type),
        isStatic: false,
      ),

      'strokeWidth': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'lineHeight': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'padding': BridgeFieldDef(
        BridgeTypeAnnotation($EdgeInsets.$type),
        isStatic: false,
      ),

      'length': BridgeFieldDef(
        BridgeTypeAnnotation($ScalebarLength.$type),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Scalebar.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Scalebar.wrap(
      Scalebar(
        key: args[0]?.$value,
        alignment: args[1]?.$value ?? Alignment.topRight,
        textStyle:
            args[2]?.$value ??
            const TextStyle(color: Color(0xFF000000), fontSize: 14),
        lineColor: args[3]?.$value ?? const Color(0xFF000000),
        strokeWidth: args[4]?.$value ?? 2,
        lineHeight: args[5]?.$value ?? 5,
        padding: args[6]?.$value ?? const EdgeInsets.all(10),
        length: args[7]?.$value ?? ScalebarLength.m,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final Scalebar $value;

  @override
  Scalebar get $reified => $value;

  /// Wrap a [Scalebar] in a [$Scalebar]
  $Scalebar.wrap(this.$value) : _superclass = $StatelessWidget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'alignment':
        return $Alignment.wrap($value.alignment);

      case 'textStyle':
        final _textStyle = $value.textStyle;
        return _textStyle == null ? const $null() : $TextStyle.wrap(_textStyle);

      case 'lineColor':
        return $Color.wrap($value.lineColor);

      case 'strokeWidth':
        return $double($value.strokeWidth);

      case 'lineHeight':
        return $double($value.lineHeight);

      case 'padding':
        return $EdgeInsets.wrap($value.padding);

      case 'length':
        return runtime.wrapAlways($value.length);
      case 'build':
        return __build;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __build = $Function(_build);
  static $Value? _build(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Scalebar;
    final result = self.$value.build(args[0]!.$value);
    return $Widget.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [ScalebarLength]
class $ScalebarLength implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_map/src/layer/scalebar/scalebar.dart',
      'ScalebarLength',
      $ScalebarLength._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/scalebar/scalebar.dart',
      'ScalebarLength.values*g',
      $ScalebarLength.$values,
    );
  }

  /// Compile-time type specification of [$ScalebarLength]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/scalebar/scalebar.dart',
    'ScalebarLength',
  );

  /// Compile-time type declaration of [$ScalebarLength]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ScalebarLength]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['s', 'm', 'l', 'xl', 'xxl'],

    fields: {
      'value': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),
    },
  );

  static final _$values = {
    's': $ScalebarLength.wrap(ScalebarLength.s),
    'm': $ScalebarLength.wrap(ScalebarLength.m),
    'l': $ScalebarLength.wrap(ScalebarLength.l),
    'xl': $ScalebarLength.wrap(ScalebarLength.xl),
    'xxl': $ScalebarLength.wrap(ScalebarLength.xxl),
  };

  /// Wrapper for the [ScalebarLength.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = ScalebarLength.values;
    return $List.view(value, (e) => $ScalebarLength.wrap(e));
  }

  final $Instance _superclass;

  @override
  final ScalebarLength $value;

  @override
  ScalebarLength get $reified => $value;

  /// Wrap a [ScalebarLength] in a [$ScalebarLength]
  $ScalebarLength.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'value':
        return $int($value.value);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
