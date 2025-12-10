import 'dart:ui' show Color;

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:latlong2/latlong.dart';

import 'camera.eval.dart';
import 'camera_constraint.eval.dart';
import 'camera_fit.eval.dart';
import '../gestures/map_events.eval.dart';
import '../gestures/positioned_tap_detector_2.eval.dart';
import 'interaction.eval.dart';

/// dart_eval wrapper binding for [MapOptions]
class $MapOptions implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/options.dart',
      'MapOptions.',
      $MapOptions.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/options.dart',
      'MapOptions.maybeOf',
      $MapOptions.$maybeOf,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/options/options.dart',
      'MapOptions.of',
      $MapOptions.$of,
    );
  }

  /// Compile-time type specification of [$MapOptions]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/options/options.dart',
    'MapOptions',
  );

  /// Compile-time type declaration of [$MapOptions]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapOptions]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'crs',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:flutter_map/src/geo/crs.dart', 'Crs'),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'initialCenter',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'initialZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'initialRotation',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'initialCameraFit',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera_fit.dart',
                    'CameraFit',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'cameraConstraint',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/camera/camera_constraint.dart',
                    'CameraConstraint',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'interactionOptions',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/map/options/interaction.dart',
                    'InteractionOptions',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'minZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxZoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'backgroundColor',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
              ),
              true,
            ),

            BridgeParameter(
              'onTap',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'tapPosition',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
                              'TapPosition',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onSecondaryTap',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'tapPosition',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
                              'TapPosition',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onLongPress',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'tapPosition',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
                              'TapPosition',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onPointerDown',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'event',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter/src/gestures/events.dart',
                              'PointerDownEvent',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onPointerUp',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'event',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter/src/gestures/events.dart',
                              'PointerUpEvent',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onPointerCancel',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'event',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter/src/gestures/events.dart',
                              'PointerCancelEvent',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onPointerHover',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'event',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter/src/gestures/events.dart',
                              'PointerHoverEvent',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'point',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:latlong2/latlong.dart',
                              'LatLng',
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
              'onPositionChanged',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        'camera',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter_map/src/map/camera/camera.dart',
                              'MapCamera',
                            ),
                            [],
                          ),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'hasGesture',
                        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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
              'onMapEvent',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [
                      BridgeParameter(
                        '',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(
                            BridgeTypeSpec(
                              'package:flutter_map/src/gestures/map_events.dart',
                              'MapEvent',
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
              'onMapReady',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.voidType),
                    ),
                    params: [],
                    namedParams: [],
                  ),
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'keepAlive',
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
      'maybeOf': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/options/options.dart',
                'MapOptions',
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
                'package:flutter_map/src/map/options/options.dart',
                'MapOptions',
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
    },
    getters: {},
    setters: {},
    fields: {
      'crs': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:flutter_map/src/geo/crs.dart', 'Crs'),
            [],
          ),
        ),
        isStatic: false,
      ),

      'initialCenter': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
            [],
          ),
        ),
        isStatic: false,
      ),

      'initialZoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'initialRotation': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'initialCameraFit': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/camera/camera_fit.dart',
              'CameraFit',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'minZoom': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'maxZoom': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'backgroundColor': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Color'), []),
        ),
        isStatic: false,
      ),

      'onTap': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'tapPosition',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
                        'TapPosition',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onSecondaryTap': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'tapPosition',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
                        'TapPosition',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onLongPress': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'tapPosition',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_map/src/gestures/positioned_tap_detector_2.dart',
                        'TapPosition',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onPointerDown': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'event',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter/src/gestures/events.dart',
                        'PointerDownEvent',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onPointerUp': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'event',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter/src/gestures/events.dart',
                        'PointerUpEvent',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onPointerCancel': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'event',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter/src/gestures/events.dart',
                        'PointerCancelEvent',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onPointerHover': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'event',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter/src/gestures/events.dart',
                        'PointerHoverEvent',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'point',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
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

      'onPositionChanged': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  'camera',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_map/src/map/camera/camera.dart',
                        'MapCamera',
                      ),
                      [],
                    ),
                  ),
                  false,
                ),

                BridgeParameter(
                  'hasGesture',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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

      'onMapEvent': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [
                BridgeParameter(
                  '',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_map/src/gestures/map_events.dart',
                        'MapEvent',
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

      'cameraConstraint': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/camera/camera_constraint.dart',
              'CameraConstraint',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'onMapReady': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef.genericFunction(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
              params: [],
              namedParams: [],
            ),
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'keepAlive': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'interactionOptions': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/map/options/interaction.dart',
              'InteractionOptions',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapOptions.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapOptions.wrap(
      MapOptions(
        crs: args[0]?.$value ?? const Epsg3857(),
        initialCenter: args[1]?.$value ?? const LatLng(50.5, 30.51),
        initialZoom: args[2]?.$value ?? 13.0,
        initialRotation: args[3]?.$value ?? 0.0,
        initialCameraFit: args[4]?.$value,
        cameraConstraint:
            args[5]?.$value ?? const CameraConstraint.unconstrained(),
        interactionOptions: args[6]?.$value ?? const InteractionOptions(),
        minZoom: args[7]?.$value,
        maxZoom: args[8]?.$value,
        backgroundColor: args[9]?.$value ?? const Color(0xFFE0E0E0),
        onTap: (TapPosition tapPosition, LatLng point) {
          (args[10]! as EvalCallable?)?.call(runtime, null, [
            $TapPosition.wrap(tapPosition),
            runtime.wrapAlways(point),
          ]);
        },
        onSecondaryTap: (TapPosition tapPosition, LatLng point) {
          (args[11]! as EvalCallable?)?.call(runtime, null, [
            $TapPosition.wrap(tapPosition),
            runtime.wrapAlways(point),
          ]);
        },
        onLongPress: (TapPosition tapPosition, LatLng point) {
          (args[12]! as EvalCallable?)?.call(runtime, null, [
            $TapPosition.wrap(tapPosition),
            runtime.wrapAlways(point),
          ]);
        },
        onPointerDown: (PointerDownEvent event, LatLng point) {
          (args[13]! as EvalCallable?)?.call(runtime, null, [
            runtime.wrapAlways(event),
            runtime.wrapAlways(point),
          ]);
        },
        onPointerUp: (PointerUpEvent event, LatLng point) {
          (args[14]! as EvalCallable?)?.call(runtime, null, [
            runtime.wrapAlways(event),
            runtime.wrapAlways(point),
          ]);
        },
        onPointerCancel: (PointerCancelEvent event, LatLng point) {
          (args[15]! as EvalCallable?)?.call(runtime, null, [
            runtime.wrapAlways(event),
            runtime.wrapAlways(point),
          ]);
        },
        onPointerHover: (PointerHoverEvent event, LatLng point) {
          (args[16]! as EvalCallable?)?.call(runtime, null, [
            runtime.wrapAlways(event),
            runtime.wrapAlways(point),
          ]);
        },
        onPositionChanged: (MapCamera camera, bool hasGesture) {
          (args[17]! as EvalCallable?)?.call(runtime, null, [
            $MapCamera.wrap(camera),
            $bool(hasGesture),
          ]);
        },
        onMapEvent: (MapEvent arg0) {
          (args[18]! as EvalCallable?)?.call(runtime, null, [
            $MapEvent.wrap(arg0),
          ]);
        },
        onMapReady: () {
          (args[19]! as EvalCallable?)?.call(runtime, null, []);
        },
        keepAlive: args[20]?.$value ?? false,
      ),
    );
  }

  /// Wrapper for the [MapOptions.maybeOf] method
  static $Value? $maybeOf(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapOptions.maybeOf(args[0]!.$value);
    return value == null ? const $null() : $MapOptions.wrap(value);
  }

  /// Wrapper for the [MapOptions.of] method
  static $Value? $of(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapOptions.of(args[0]!.$value);
    return $MapOptions.wrap(value);
  }

  final $Instance _superclass;

  @override
  final MapOptions $value;

  @override
  MapOptions get $reified => $value;

  /// Wrap a [MapOptions] in a [$MapOptions]
  $MapOptions.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'crs':
        final _crs = $value.crs;
        return runtime.wrapAlways(_crs);

      case 'initialCenter':
        final _initialCenter = $value.initialCenter;
        return runtime.wrapAlways(_initialCenter);

      case 'initialZoom':
        final _initialZoom = $value.initialZoom;
        return $double(_initialZoom);

      case 'initialRotation':
        final _initialRotation = $value.initialRotation;
        return $double(_initialRotation);

      case 'initialCameraFit':
        final _initialCameraFit = $value.initialCameraFit;
        return _initialCameraFit == null
            ? const $null()
            : $CameraFit.wrap(_initialCameraFit);

      case 'minZoom':
        final _minZoom = $value.minZoom;
        return _minZoom == null ? const $null() : $double(_minZoom);

      case 'maxZoom':
        final _maxZoom = $value.maxZoom;
        return _maxZoom == null ? const $null() : $double(_maxZoom);

      case 'backgroundColor':
        final _backgroundColor = $value.backgroundColor;
        return $Color.wrap(_backgroundColor);

      case 'onTap':
        final _onTap = $value.onTap;
        return _onTap == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onTap(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onSecondaryTap':
        final _onSecondaryTap = $value.onSecondaryTap;
        return _onSecondaryTap == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onSecondaryTap(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onLongPress':
        final _onLongPress = $value.onLongPress;
        return _onLongPress == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onLongPress(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onPointerDown':
        final _onPointerDown = $value.onPointerDown;
        return _onPointerDown == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onPointerDown(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onPointerUp':
        final _onPointerUp = $value.onPointerUp;
        return _onPointerUp == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onPointerUp(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onPointerCancel':
        final _onPointerCancel = $value.onPointerCancel;
        return _onPointerCancel == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onPointerCancel(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onPointerHover':
        final _onPointerHover = $value.onPointerHover;
        return _onPointerHover == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onPointerHover(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onPositionChanged':
        final _onPositionChanged = $value.onPositionChanged;
        return _onPositionChanged == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onPositionChanged(args[0]!.$value, args[1]!.$value);
                return const $null();
              });

      case 'onMapEvent':
        final _onMapEvent = $value.onMapEvent;
        return _onMapEvent == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onMapEvent(args[0]!.$value);
                return const $null();
              });

      case 'cameraConstraint':
        return $CameraConstraint.wrap($value.cameraConstraint);

      case 'onMapReady':
        final _onMapReady = $value.onMapReady;
        return _onMapReady == null
            ? const $null()
            : $Function((runtime, target, args) {
                _onMapReady();
                return const $null();
              });

      case 'keepAlive':
        return $bool($value.keepAlive);

      case 'interactionOptions':
        return $InteractionOptions.wrap($value.interactionOptions);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
