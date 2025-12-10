import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';

import 'camera.eval.dart';
import '../gestures/map_events.eval.dart';

/// dart_eval wrapper binding for [MapController]
class $MapController implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/controller/map_controller.dart',
      'MapController.',
      $MapController.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/controller/map_controller.dart',
      'MapController.maybeOf',
      $MapController.$maybeOf,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/controller/map_controller.dart',
      'MapController.of',
      $MapController.$of,
    );
  }

  /// Compile-time type specification of [$MapController]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/controller/map_controller.dart',
    'MapController',
  );

  /// Compile-time type declaration of [$MapController]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapController]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'maybeOf': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/controller/map_controller.dart',
                'MapController',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [],
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
          ],
        ),
        isStatic: true,
      ),

      'of': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/controller/map_controller.dart',
                'MapController',
              ),
              [],
            ),
          ),
          namedParams: [],
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
          ],
        ),
        isStatic: true,
      ),

      'move': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [
            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              true,
            ),

            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'center',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'rotate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'degree',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'rotateAroundPoint': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [
            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'degree',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'moveAndRotate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'center',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'degree',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'fitCamera': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'cameraFit',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera_fit.dart',
                    'CameraFit',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'dispose': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {
      'mapEventStream': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.stream, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/gestures/map_events.dart',
                    'MapEvent',
                  ),
                  [],
                ),
              ),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'camera': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapController.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapController.wrap(MapController());
  }

  /// Wrapper for the [MapController.maybeOf] method
  static $Value? $maybeOf(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapController.maybeOf(args[0]!.$value);
    return value == null ? const $null() : $MapController.wrap(value);
  }

  /// Wrapper for the [MapController.of] method
  static $Value? $of(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapController.of(args[0]!.$value);
    return $MapController.wrap(value);
  }

  final $Instance _superclass;

  @override
  final MapController $value;

  @override
  MapController get $reified => $value;

  /// Wrap a [MapController] in a [$MapController]
  $MapController.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'mapEventStream':
        return $Stream.wrap(
          $value.mapEventStream.map((e) => $MapEvent.wrap(e)),
        );

      case 'camera':
        return $MapCamera.wrap($value.camera);
      case 'move':
        return __move;

      case 'rotate':
        return __rotate;

      case 'rotateAroundPoint':
        return __rotateAroundPoint;

      case 'moveAndRotate':
        return __moveAndRotate;

      case 'fitCamera':
        return __fitCamera;

      case 'dispose':
        return __dispose;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __move = $Function(_move);
  static $Value? _move(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $MapController;
    final result = self.$value.move(
      args[0]!.$value,
      args[1]!.$value,
      offset: args[2]?.$value ?? Offset.zero,
      id: args[3]?.$value,
    );
    return $bool(result);
  }

  static const $Function __rotate = $Function(_rotate);
  static $Value? _rotate(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $MapController;
    final result = self.$value.rotate(args[0]!.$value, id: args[1]?.$value);
    return $bool(result);
  }

  static const $Function __rotateAroundPoint = $Function(_rotateAroundPoint);
  static $Value? _rotateAroundPoint(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapController;
    self.$value.rotateAroundPoint(
      args[0]!.$value,
      offset: args[1]?.$value,
      id: args[2]?.$value,
    );
    return null;
  }

  static const $Function __moveAndRotate = $Function(_moveAndRotate);
  static $Value? _moveAndRotate(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapController;
    self.$value.moveAndRotate(
      args[0]!.$value,
      args[1]!.$value,
      args[2]!.$value,
      id: args[3]?.$value,
    );
    return null;
  }

  static const $Function __fitCamera = $Function(_fitCamera);
  static $Value? _fitCamera(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapController;
    final result = self.$value.fitCamera(args[0]!.$value);
    return $bool(result);
  }

  static const $Function __dispose = $Function(_dispose);
  static $Value? _dispose(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $MapController;
    self.$value.dispose();
    return null;
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
