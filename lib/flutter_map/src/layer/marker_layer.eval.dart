import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_eval/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/painting.dart';

import 'marker.eval.dart';

/// dart_eval wrapper binding for [MarkerLayer]
class $MarkerLayer implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
      'MarkerLayer.',
      $MarkerLayer.$new,
    );
  }

  /// Compile-time type specification of [$MarkerLayer]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
    'MarkerLayer',
  );

  /// Compile-time type declaration of [$MarkerLayer]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MarkerLayer]
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
              'markers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation($Marker.$type),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'alignment',
              BridgeTypeAnnotation($Alignment.$type),
              true,
            ),

            BridgeParameter(
              'rotate',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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
      'markers': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [BridgeTypeAnnotation($Marker.$type)]),
        ),
        isStatic: false,
      ),

      'alignment': BridgeFieldDef(
        BridgeTypeAnnotation($Alignment.$type),
        isStatic: false,
      ),

      'rotate': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MarkerLayer.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MarkerLayer.wrap(
      MarkerLayer(
        key: args[0]?.$value,
        markers: (args[1]!.$reified as List).cast(),
        alignment: args[2]?.$value ?? Alignment.center,
        rotate: args[3]?.$value ?? false,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final MarkerLayer $value;

  @override
  MarkerLayer get $reified => $value;

  /// Wrap a [MarkerLayer] in a [$MarkerLayer]
  $MarkerLayer.wrap(this.$value) : _superclass = $StatelessWidget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'markers':
        return $List.view($value.markers, (e) => $Marker.wrap(e));

      case 'alignment':
        return $Alignment.wrap($value.alignment);

      case 'rotate':
        return $bool($value.rotate);
      case 'build':
        return __build;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __build = $Function(_build);
  static $Value? _build(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $MarkerLayer;
    final result = self.$value.build(args[0]!.$value);
    return $Widget.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
