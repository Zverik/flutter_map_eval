import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval wrapper binding for [FlutterMap]
class $FlutterMap implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/widget.dart',
      'FlutterMap.',
      $FlutterMap.$new,
    );
  }

  /// Compile-time type specification of [$FlutterMap]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/widget.dart',
    'FlutterMap',
  );

  /// Compile-time type declaration of [$FlutterMap]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FlutterMap]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $StatefulWidget$bridge.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/foundation/key.dart',
                    'Key',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'mapController',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/controller/map_controller.dart',
                    'MapController',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'options',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/options/options.dart',
                    'MapOptions',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'children',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter/src/widgets/framework.dart',
                        'Widget',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FlutterMap.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FlutterMap.wrap(
      FlutterMap(
        key: args[0]?.$value,
        mapController: args[1]?.$value,
        options: args[2]?.$value ?? const MapOptions(),
        children: (args[3]!.$reified as List).cast(),
      ),
    );
  }

  @override
  final FlutterMap $value;

  @override
  FlutterMap get $reified => $value;

  /// Wrap a [FlutterMap] in a [$FlutterMap]
  $FlutterMap.wrap(this.$value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
