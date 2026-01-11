// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_eval/foundation.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_eval/painting.dart';
import 'package:flutter_eval/ui.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:flutter_eval/widgets.dart';

/// dart_eval wrapper binding for [ListViewBuilderOptions]
class $ListViewBuilderOptions implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:responsive_grid_list/responsive_grid_list.dart',
      'ListViewBuilderOptions.',
      $ListViewBuilderOptions.$new,
    );
  }

  /// Compile-time type specification of [$ListViewBuilderOptions]
  static const $spec = BridgeTypeSpec(
    'package:responsive_grid_list/responsive_grid_list.dart',
    'ListViewBuilderOptions',
  );

  /// Compile-time type declaration of [$ListViewBuilderOptions]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ListViewBuilderOptions]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'scrollDirection',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/basic_types.dart',
                    'Axis',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'reverse',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'controller',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/widgets/scroll_controller.dart',
                    'ScrollController',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'primary',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'shrinkWrap',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/painting/edge_insets.dart',
                    'EdgeInsetsGeometry',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'itemExtent',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'prototypeItem',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/widgets/framework.dart',
                    'Widget',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'findChildIndexCallback',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.int, []),
                      nullable: true,
                    ),
                    params: [
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
              'addAutomaticKeepAlives',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'addRepaintBoundaries',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'addSemanticIndexes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'cacheExtent',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'semanticChildCount',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'keyboardDismissBehavior',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter/src/widgets/scroll_view.dart',
                    'ScrollViewKeyboardDismissBehavior',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'restorationId',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'clipBehavior',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Clip'), []),
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
      'scrollDirection': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/painting/basic_types.dart',
              'Axis',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'reverse': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),

      'controller': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/widgets/scroll_controller.dart',
              'ScrollController',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'primary': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),

      'shrinkWrap': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),

      'padding': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/painting/edge_insets.dart',
              'EdgeInsetsGeometry',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'itemExtent': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'prototypeItem': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter/src/widgets/framework.dart',
              'Widget',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'findChildIndexCallback': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              params: [
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

      'addAutomaticKeepAlives': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),

      'addRepaintBoundaries': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),

      'addSemanticIndexes': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),

      'cacheExtent': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'semanticChildCount': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      'restorationId': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'clipBehavior': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Clip'), []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [ListViewBuilderOptions.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $ListViewBuilderOptions.wrap(
      ListViewBuilderOptions(
        scrollDirection: args[0]?.$value,
        reverse: args[1]?.$value,
        controller: args[2]?.$value,
        primary: args[3]?.$value,
        shrinkWrap: args[4]?.$value,
        padding: args[5]?.$value,
        itemExtent: args[6]?.$value,
        prototypeItem: args[7]?.$value,
        findChildIndexCallback: (Key key) {
          return (args[8]! as EvalCallable?)?.call(runtime, null, [
            $Key.wrap(key),
          ])?.$value;
        },
        addAutomaticKeepAlives: args[9]?.$value,
        addRepaintBoundaries: args[10]?.$value,
        addSemanticIndexes: args[11]?.$value,
        cacheExtent: args[12]?.$value,
        semanticChildCount: args[13]?.$value,
        restorationId: args[14]?.$value,
        clipBehavior: args[15]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final ListViewBuilderOptions $value;

  @override
  ListViewBuilderOptions get $reified => $value;

  /// Wrap a [ListViewBuilderOptions] in a [$ListViewBuilderOptions]
  $ListViewBuilderOptions.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'scrollDirection':
        final _scrollDirection = $value.scrollDirection;
        return _scrollDirection == null
            ? const $null()
            : $Axis.wrap(_scrollDirection);

      case 'reverse':
        final _reverse = $value.reverse;
        return _reverse == null ? const $null() : $bool(_reverse);

      case 'controller':
        final _controller = $value.controller;
        return _controller == null
            ? const $null()
            : $ScrollController.wrap(_controller);

      case 'primary':
        final _primary = $value.primary;
        return _primary == null ? const $null() : $bool(_primary);

      case 'shrinkWrap':
        final _shrinkWrap = $value.shrinkWrap;
        return _shrinkWrap == null ? const $null() : $bool(_shrinkWrap);

      case 'padding':
        final _padding = $value.padding;
        return _padding == null
            ? const $null()
            : $EdgeInsetsGeometry.wrap(_padding);

      case 'itemExtent':
        final _itemExtent = $value.itemExtent;
        return _itemExtent == null ? const $null() : $double(_itemExtent);

      case 'prototypeItem':
        final _prototypeItem = $value.prototypeItem;
        return _prototypeItem == null
            ? const $null()
            : $Widget.wrap(_prototypeItem);

      case 'findChildIndexCallback':
        final _findChildIndexCallback = $value.findChildIndexCallback;
        return _findChildIndexCallback == null
            ? const $null()
            : $Function((runtime, target, args) {
                final funcResult = _findChildIndexCallback(args[0]!.$value);
                return funcResult == null ? const $null() : $int(funcResult);
              });

      case 'addAutomaticKeepAlives':
        final _addAutomaticKeepAlives = $value.addAutomaticKeepAlives;
        return _addAutomaticKeepAlives == null
            ? const $null()
            : $bool(_addAutomaticKeepAlives);

      case 'addRepaintBoundaries':
        final _addRepaintBoundaries = $value.addRepaintBoundaries;
        return _addRepaintBoundaries == null
            ? const $null()
            : $bool(_addRepaintBoundaries);

      case 'addSemanticIndexes':
        final _addSemanticIndexes = $value.addSemanticIndexes;
        return _addSemanticIndexes == null
            ? const $null()
            : $bool(_addSemanticIndexes);

      case 'cacheExtent':
        final _cacheExtent = $value.cacheExtent;
        return _cacheExtent == null ? const $null() : $double(_cacheExtent);

      case 'semanticChildCount':
        final _semanticChildCount = $value.semanticChildCount;
        return _semanticChildCount == null
            ? const $null()
            : $int(_semanticChildCount);

      case 'restorationId':
        final _restorationId = $value.restorationId;
        return _restorationId == null ? const $null() : $String(_restorationId);

      case 'clipBehavior':
        final _clipBehavior = $value.clipBehavior;
        return _clipBehavior == null
            ? const $null()
            : $Clip.wrap(_clipBehavior);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
