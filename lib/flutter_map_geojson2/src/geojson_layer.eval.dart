import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/latlong2/src/LatLng.eval.dart';
import 'package:flutter_map_geojson2/flutter_map_geojson2.dart';
import 'package:latlong2/latlong.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [GeoJsonLayer]
class $GeoJsonLayer implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_layer.dart',
      'GeoJsonLayer.',
      $GeoJsonLayer.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_layer.dart',
      'GeoJsonLayer.memory',
      $GeoJsonLayer.$memory,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_layer.dart',
      'GeoJsonLayer.file',
      $GeoJsonLayer.$file,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_layer.dart',
      'GeoJsonLayer.network',
      $GeoJsonLayer.$network,
    );
  }

  /// Compile-time type specification of [$GeoJsonLayer]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_layer.dart',
    'GeoJsonLayer',
  );

  /// Compile-time type declaration of [$GeoJsonLayer]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$GeoJsonLayer]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter/src/widgets/framework.dart',
          'StatefulWidget',
        ),
        [],
      ),
    ),
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
              'data',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
                    'GeoJsonProvider',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'onPoint',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
                          'Marker',
                        ),
                        [],
                      ),
                    ),
                    params: [
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

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolyline',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polyline_layer/polyline_layer.dart',
                          'Polyline',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolygon',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polygon_layer/polygon_layer.dart',
                          'Polygon',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'holes',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.list, [
                                BridgeTypeAnnotation(
                                  BridgeTypeRef(
                                    BridgeTypeSpec(
                                      'package:latlong2/latlong.dart',
                                      'LatLng',
                                    ),
                                    [],
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                          nullable: true,
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'filter',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.bool, []),
                    ),
                    params: [
                      BridgeParameter(
                        'geometryType',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.string, []),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'styleDefaults',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map_geojson2/geojson2/default_features.dart',
                    'GeoJsonStyleDefaults',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
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
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
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
              'polylineHitbox',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'memory': BridgeConstructorDef(
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
              'onPoint',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
                          'Marker',
                        ),
                        [],
                      ),
                    ),
                    params: [
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

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolyline',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polyline_layer/polyline_layer.dart',
                          'Polyline',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolygon',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polygon_layer/polygon_layer.dart',
                          'Polygon',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'holes',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.list, [
                                BridgeTypeAnnotation(
                                  BridgeTypeRef(
                                    BridgeTypeSpec(
                                      'package:latlong2/latlong.dart',
                                      'LatLng',
                                    ),
                                    [],
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                          nullable: true,
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'filter',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.bool, []),
                    ),
                    params: [
                      BridgeParameter(
                        'geometryType',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.string, []),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'styleDefaults',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map_geojson2/geojson2/default_features.dart',
                    'GeoJsonStyleDefaults',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
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
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
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
              'polylineHitbox',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'data',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'file': BridgeConstructorDef(
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
              'onPoint',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
                          'Marker',
                        ),
                        [],
                      ),
                    ),
                    params: [
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

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolyline',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polyline_layer/polyline_layer.dart',
                          'Polyline',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolygon',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polygon_layer/polygon_layer.dart',
                          'Polygon',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'holes',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.list, [
                                BridgeTypeAnnotation(
                                  BridgeTypeRef(
                                    BridgeTypeSpec(
                                      'package:latlong2/latlong.dart',
                                      'LatLng',
                                    ),
                                    [],
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                          nullable: true,
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'filter',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.bool, []),
                    ),
                    params: [
                      BridgeParameter(
                        'geometryType',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.string, []),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'styleDefaults',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map_geojson2/geojson2/default_features.dart',
                    'GeoJsonStyleDefaults',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
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
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
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
              'polylineHitbox',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'file',
              BridgeTypeAnnotation(BridgeTypeRef(IoTypes.file, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'network': BridgeConstructorDef(
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
              'onPoint',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/marker_layer/marker_layer.dart',
                          'Marker',
                        ),
                        [],
                      ),
                    ),
                    params: [
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

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolyline',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polyline_layer/polyline_layer.dart',
                          'Polyline',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'onPolygon',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:flutter_map/src/layer/polygon_layer/polygon_layer.dart',
                          'Polygon',
                        ),
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
                      ),
                    ),
                    params: [
                      BridgeParameter(
                        'points',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(
                                BridgeTypeSpec(
                                  'package:latlong2/latlong.dart',
                                  'LatLng',
                                ),
                                [],
                              ),
                            ),
                          ]),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'holes',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.list, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.list, [
                                BridgeTypeAnnotation(
                                  BridgeTypeRef(
                                    BridgeTypeSpec(
                                      'package:latlong2/latlong.dart',
                                      'LatLng',
                                    ),
                                    [],
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                          nullable: true,
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'filter',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.bool, []),
                    ),
                    params: [
                      BridgeParameter(
                        'geometryType',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.string, []),
                        ),
                        false,
                      ),

                      BridgeParameter(
                        'properties',
                        BridgeTypeAnnotation(
                          BridgeTypeRef(CoreTypes.map, [
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.string, []),
                            ),
                            BridgeTypeAnnotation(
                              BridgeTypeRef(CoreTypes.dynamic),
                            ),
                          ]),
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
              'styleDefaults',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map_geojson2/geojson2/default_features.dart',
                    'GeoJsonStyleDefaults',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
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
                        [
                          BridgeTypeAnnotation(
                            BridgeTypeRef(CoreTypes.object, []),
                          ),
                        ],
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
              'polylineHitbox',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [GeoJsonLayer.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $GeoJsonLayer.wrap(
      GeoJsonLayer(
        key: args[0]?.$value,
        data: args[1]!.$value,
        onPoint: (LatLng point, Map<String, dynamic> properties) {
          return (args[2]! as EvalCallable?)?.call(runtime, null, [
            $LatLng.wrap(point),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolyline: (List<LatLng> points, Map<String, dynamic> properties) {
          return (args[3]! as EvalCallable?)?.call(runtime, null, [
            $List.view(points, (e) => $LatLng.wrap(e)),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolygon:
            (
              List<LatLng> points,
              List<List<LatLng>>? holes,
              Map<String, dynamic> properties,
            ) {
              return (args[4]! as EvalCallable?)?.call(runtime, null, [
                $List.view(points, (e) => $LatLng.wrap(e)),
                if (holes == null)
                  const $null()
                else
                  $List.view(
                    holes,
                    (e) => $List.view(e, (e) => $LatLng.wrap(e)),
                  ),
                $Map.wrap(properties),
              ])?.$value;
            },
        filter: (String geometryType, Map<String, dynamic> properties) {
          return (args[5]! as EvalCallable?)?.call(runtime, null, [
            $String(geometryType),
            $Map.wrap(properties),
          ])?.$value;
        },
        styleDefaults: args[6]?.$value,
        hitNotifier: args[7]?.$value,
        polylineHitbox: args[8]?.$value ?? 10,
      ),
    );
  }

  /// Wrapper for the [GeoJsonLayer.memory] constructor
  static $Value? $memory(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $GeoJsonLayer.wrap(
      GeoJsonLayer.memory(
        (args[0]!.$reified as Map).cast(),
        key: args[1]?.$value,
        onPoint: (LatLng point, Map<String, dynamic> properties) {
          return (args[2]! as EvalCallable?)?.call(runtime, null, [
            $LatLng.wrap(point),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolyline: (List<LatLng> points, Map<String, dynamic> properties) {
          return (args[3]! as EvalCallable?)?.call(runtime, null, [
            $List.view(points, (e) => $LatLng.wrap(e)),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolygon:
            (
              List<LatLng> points,
              List<List<LatLng>>? holes,
              Map<String, dynamic> properties,
            ) {
              return (args[4]! as EvalCallable?)?.call(runtime, null, [
                $List.view(points, (e) => $LatLng.wrap(e)),
                if (holes == null)
                  const $null()
                else
                  $List.view(
                    holes,
                    (e) => $List.view(e, (e) => $LatLng.wrap(e)),
                  ),
                $Map.wrap(properties),
              ])?.$value;
            },
        filter: (String geometryType, Map<String, dynamic> properties) {
          return (args[5]! as EvalCallable?)?.call(runtime, null, [
            $String(geometryType),
            $Map.wrap(properties),
          ])?.$value;
        },
        styleDefaults: args[6]?.$value,
        hitNotifier: args[7]?.$value,
        polylineHitbox: args[8]?.$value ?? 10,
      ),
    );
  }

  /// Wrapper for the [GeoJsonLayer.file] constructor
  static $Value? $file(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $GeoJsonLayer.wrap(
      GeoJsonLayer.file(
        args[0]!.$value,
        key: args[1]?.$value,
        onPoint: (LatLng point, Map<String, dynamic> properties) {
          return (args[2]! as EvalCallable?)?.call(runtime, null, [
            $LatLng.wrap(point),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolyline: (List<LatLng> points, Map<String, dynamic> properties) {
          return (args[3]! as EvalCallable?)?.call(runtime, null, [
            $List.view(points, (e) => $LatLng.wrap(e)),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolygon:
            (
              List<LatLng> points,
              List<List<LatLng>>? holes,
              Map<String, dynamic> properties,
            ) {
              return (args[4]! as EvalCallable?)?.call(runtime, null, [
                $List.view(points, (e) => $LatLng.wrap(e)),
                if (holes == null)
                  const $null()
                else
                  $List.view(
                    holes,
                    (e) => $List.view(e, (e) => $LatLng.wrap(e)),
                  ),
                $Map.wrap(properties),
              ])?.$value;
            },
        filter: (String geometryType, Map<String, dynamic> properties) {
          return (args[5]! as EvalCallable?)?.call(runtime, null, [
            $String(geometryType),
            $Map.wrap(properties),
          ])?.$value;
        },
        styleDefaults: args[6]?.$value,
        hitNotifier: args[7]?.$value,
        polylineHitbox: args[8]?.$value ?? 10,
      ),
    );
  }

  /// Wrapper for the [GeoJsonLayer.network] constructor
  static $Value? $network(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $GeoJsonLayer.wrap(
      GeoJsonLayer.network(
        args[0]!.$value,
        key: args[1]?.$value,
        onPoint: (LatLng point, Map<String, dynamic> properties) {
          return (args[2]! as EvalCallable?)?.call(runtime, null, [
            $LatLng.wrap(point),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolyline: (List<LatLng> points, Map<String, dynamic> properties) {
          return (args[3]! as EvalCallable?)?.call(runtime, null, [
            $List.view(points, (e) => $LatLng.wrap(e)),
            $Map.wrap(properties),
          ])?.$value;
        },
        onPolygon:
            (
              List<LatLng> points,
              List<List<LatLng>>? holes,
              Map<String, dynamic> properties,
            ) {
              return (args[4]! as EvalCallable?)?.call(runtime, null, [
                $List.view(points, (e) => $LatLng.wrap(e)),
                if (holes == null)
                  const $null()
                else
                  $List.view(
                    holes,
                    (e) => $List.view(e, (e) => $LatLng.wrap(e)),
                  ),
                $Map.wrap(properties),
              ])?.$value;
            },
        filter: (String geometryType, Map<String, dynamic> properties) {
          return (args[5]! as EvalCallable?)?.call(runtime, null, [
            $String(geometryType),
            $Map.wrap(properties),
          ])?.$value;
        },
        styleDefaults: args[6]?.$value,
        hitNotifier: args[7]?.$value,
        polylineHitbox: args[8]?.$value ?? 10,
      ),
    );
  }

  @override
  final GeoJsonLayer $value;

  @override
  GeoJsonLayer get $reified => $value;

  /// Wrap a [GeoJsonLayer] in a [$GeoJsonLayer]
  $GeoJsonLayer.wrap(this.$value);

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
