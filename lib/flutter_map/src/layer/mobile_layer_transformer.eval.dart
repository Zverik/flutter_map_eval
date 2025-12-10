import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:flutter_eval/foundation.dart';
import 'package:flutter_map/flutter_map.dart' show MobileLayerTransformer;

/// dart_eval wrapper binding for [MobileLayerTransformer]
class $MobileLayerTransformer implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/shared/mobile_layer_transformer.dart',
      'MobileLayerTransformer.',
      $MobileLayerTransformer.$new,
    );
  }

  /// Compile-time type specification of [$MobileLayerTransformer]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/shared/mobile_layer_transformer.dart',
    'MobileLayerTransformer',
  );

  /// Compile-time type declaration of [$MobileLayerTransformer]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MobileLayerTransformer]
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
              'child',
              BridgeTypeAnnotation($Widget.$type),
              false,
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
      'child': BridgeFieldDef(
        BridgeTypeAnnotation($Widget.$type),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MobileLayerTransformer.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MobileLayerTransformer.wrap(
      MobileLayerTransformer(key: args[0]?.$value, child: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final MobileLayerTransformer $value;

  @override
  MobileLayerTransformer get $reified => $value;

  /// Wrap a [MobileLayerTransformer] in a [$MobileLayerTransformer]
  $MobileLayerTransformer.wrap(this.$value)
    : _superclass = $StatelessWidget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'child':
        return $Widget.wrap($value.child);
      case 'build':
        return __build;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __build = $Function(_build);
  static $Value? _build(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $MobileLayerTransformer;
    final result = self.$value.build(args[0]!.$value);
    return $Widget.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
