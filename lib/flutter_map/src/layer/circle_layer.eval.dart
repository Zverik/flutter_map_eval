import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/widgets.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/foundation.dart';
import 'package:flutter_map/flutter_map.dart' show CircleLayer;

import 'circle_marker.eval.dart';
import 'layer_hit_result.eval.dart';

/// dart_eval wrapper binding for [CircleLayer]
class $CircleLayer implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/layer/circle_layer/circle_layer.dart',
      'CircleLayer.',
      $CircleLayer.$new,
    );
  }

  /// Compile-time type specification of [$CircleLayer]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/layer/circle_layer/circle_layer.dart',
    'CircleLayer',
  );

  /// Compile-time type declaration of [$CircleLayer]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CircleLayer]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      generics: {
        'R': BridgeGenericParam($extends: BridgeTypeRef(CoreTypes.object, [])),
      },

      $extends: $StatelessWidget$bridge.$type,
    ),
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
              'circles',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef($CircleMarker.$spec, [
                      BridgeTypeAnnotation(BridgeTypeRef.ref('R')),
                    ]),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'hitNotifier',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/foundation/change_notifier.dart',
                    'ValueNotifier',
                  ),
                  [
                    BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/shared/layer_interactivity/layer_hit_result.dart',
                          'LayerHitResult',
                        ),
                        [BridgeTypeAnnotation(BridgeTypeRef.ref('R'))],
                      ),
                      nullable: true,
                    ),
                  ],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'optimizeRadiusInMeters',
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
      'circles': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef($CircleMarker.$spec, [
                BridgeTypeAnnotation(BridgeTypeRef.ref('R')),
              ]),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'hitNotifier': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/foundation/change_notifier.dart',
              'ValueNotifier',
            ),
            [
              BridgeTypeAnnotation(
                BridgeTypeRef($LayerHitResult.$spec, [
                  BridgeTypeAnnotation(BridgeTypeRef.ref('R')),
                ]),
                nullable: true,
              ),
            ],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'optimizeRadiusInMeters': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [CircleLayer.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $CircleLayer.wrap(
      CircleLayer(
        key: args[0]?.$value,
        circles: (args[1]!.$reified as List).cast(),
        hitNotifier: args[2]?.$value,
        optimizeRadiusInMeters: args[3]?.$value ?? false,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final CircleLayer $value;

  @override
  CircleLayer get $reified => $value;

  /// Wrap a [CircleLayer] in a [$CircleLayer]
  $CircleLayer.wrap(this.$value) : _superclass = $StatelessWidget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'circles':
        return $List.view($value.circles, (e) => $CircleMarker.wrap(e));

      case 'hitNotifier':
        final _hitNotifier = $value.hitNotifier;
        return _hitNotifier == null
            ? const $null()
            : $ValueNotifier.wrap(_hitNotifier);

      case 'optimizeRadiusInMeters':
        return $bool($value.optimizeRadiusInMeters);
      case 'build':
        return __build;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __build = $Function(_build);
  static $Value? _build(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CircleLayer;
    final result = self.$value.build(args[0]!.$value);
    return $Widget.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
