import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'list_view_builder_options.eval.dart';

/// dart_eval wrapper binding for [ResponsiveGridList]
class $ResponsiveGridList implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:responsive_grid_list/responsive_grid_list.dart',
      'ResponsiveGridList.',
      $ResponsiveGridList.$new,
    );
  }

  /// Compile-time type specification of [$ResponsiveGridList]
  static const $spec = BridgeTypeSpec(
    'package:responsive_grid_list/responsive_grid_list.dart',
    'ResponsiveGridList',
  );

  /// Compile-time type declaration of [$ResponsiveGridList]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ResponsiveGridList]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'minItemWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
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
              'minItemsPerRow',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'maxItemsPerRow',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'horizontalGridSpacing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'verticalGridSpacing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'horizontalGridMargin',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'verticalGridMargin',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'rowMainAxisAlignment',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/rendering/flex.dart',
                    'MainAxisAlignment',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'shrinkWrap',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'listViewBuilderOptions',
              BridgeTypeAnnotation(
                $ListViewBuilderOptions.$type,
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [ResponsiveGridList.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $ResponsiveGridList.wrap(
      ResponsiveGridList(
        minItemWidth: args[0]!.$value,
        children: (args[1]!.$reified as List).cast(),
        key: args[2]?.$value,
        minItemsPerRow: args[3]?.$value ?? 1,
        maxItemsPerRow: args[4]?.$value,
        horizontalGridSpacing: args[5]?.$value ?? 16,
        verticalGridSpacing: args[6]?.$value ?? 16,
        horizontalGridMargin: args[7]?.$value,
        verticalGridMargin: args[8]?.$value,
        rowMainAxisAlignment: args[9]?.$value ?? MainAxisAlignment.start,
        shrinkWrap: args[10]?.$value ?? false,
        listViewBuilderOptions: args[11]?.$value,
      ),
    );
  }

  @override
  final ResponsiveGridList $value;

  @override
  ResponsiveGridList get $reified => $value;

  /// Wrap a [ResponsiveGridList] in a [$ResponsiveGridList]
  $ResponsiveGridList.wrap(this.$value);

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
