import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:latlong2/latlong.dart';

/// dart_eval wrapper binding for [LengthUnit]
class $LengthUnit implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LengthUnit.dart',
      'LengthUnit.',
      $LengthUnit.$new,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LengthUnit.dart',
      'LengthUnit.Millimeter*g',
      $LengthUnit.$Millimeter,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LengthUnit.dart',
      'LengthUnit.Centimeter*g',
      $LengthUnit.$Centimeter,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LengthUnit.dart',
      'LengthUnit.Meter*g',
      $LengthUnit.$Meter,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LengthUnit.dart',
      'LengthUnit.Kilometer*g',
      $LengthUnit.$Kilometer,
    );

    runtime.registerBridgeFunc(
      'package:latlong2/latlong/LengthUnit.dart',
      'LengthUnit.Mile*g',
      $LengthUnit.$Mile,
    );
  }

  /// Compile-time type specification of [$LengthUnit]
  static const $spec = BridgeTypeSpec(
    'package:latlong2/latlong/LengthUnit.dart',
    'LengthUnit',
  );

  /// Compile-time type declaration of [$LengthUnit]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LengthUnit]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'scaleFactor',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'to': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'unit',
              BridgeTypeAnnotation($LengthUnit.$type),
              false,
            ),

            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'Millimeter': BridgeFieldDef(
        BridgeTypeAnnotation($LengthUnit.$type),
        isStatic: true,
      ),

      'Centimeter': BridgeFieldDef(
        BridgeTypeAnnotation($LengthUnit.$type),
        isStatic: true,
      ),

      'Meter': BridgeFieldDef(
        BridgeTypeAnnotation($LengthUnit.$type),
        isStatic: true,
      ),

      'Kilometer': BridgeFieldDef(
        BridgeTypeAnnotation($LengthUnit.$type),
        isStatic: true,
      ),

      'Mile': BridgeFieldDef(
        BridgeTypeAnnotation($LengthUnit.$type),
        isStatic: true,
      ),

      'scaleFactor': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LengthUnit.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LengthUnit.wrap(LengthUnit(args[0]!.$value));
  }

  /// Wrapper for the [LengthUnit.Millimeter] getter
  static $Value? $Millimeter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LengthUnit.Millimeter;
    return $LengthUnit.wrap(value);
  }

  /// Wrapper for the [LengthUnit.Centimeter] getter
  static $Value? $Centimeter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LengthUnit.Centimeter;
    return $LengthUnit.wrap(value);
  }

  /// Wrapper for the [LengthUnit.Meter] getter
  static $Value? $Meter(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LengthUnit.Meter;
    return $LengthUnit.wrap(value);
  }

  /// Wrapper for the [LengthUnit.Kilometer] getter
  static $Value? $Kilometer(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LengthUnit.Kilometer;
    return $LengthUnit.wrap(value);
  }

  /// Wrapper for the [LengthUnit.Mile] getter
  static $Value? $Mile(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LengthUnit.Mile;
    return $LengthUnit.wrap(value);
  }

  final $Instance _superclass;

  @override
  final LengthUnit $value;

  @override
  LengthUnit get $reified => $value;

  /// Wrap a [LengthUnit] in a [$LengthUnit]
  $LengthUnit.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'scaleFactor':
        return $double($value.scaleFactor);
      case 'to':
        return __to;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __to = $Function(_to);
  static $Value? _to(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $LengthUnit;
    final result = self.$value.to(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
