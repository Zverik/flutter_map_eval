import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/ui.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_eval/stdlib/core.dart';

import '../geo/latlng_bounds.eval.dart';

/// dart_eval wrapper binding for [MapCamera]
class $MapCamera implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera.dart',
      'MapCamera.',
      $MapCamera.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera.dart',
      'MapCamera.initialCamera',
      $MapCamera.$initialCamera,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera.dart',
      'MapCamera.maybeOf',
      $MapCamera.$maybeOf,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera.dart',
      'MapCamera.of',
      $MapCamera.$of,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera.dart',
      'MapCamera.calculateRotatedSize',
      $MapCamera.$calculateRotatedSize,
    );

    runtime.registerBridgeFunc(
      'package:flutter_map/src/map/camera/camera.dart',
      'MapCamera.kImpossibleSize*g',
      $MapCamera.$kImpossibleSize,
    );
  }

  /// Compile-time type specification of [$MapCamera]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map/src/map/camera/camera.dart',
    'MapCamera',
  );

  /// Compile-time type declaration of [$MapCamera]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MapCamera]
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
              false,
            ),

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
              'rotation',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'nonRotatedSize',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
              ),
              false,
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
              'size',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'pixelBounds',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Rect'), []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'bounds',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_map/src/geo/latlng_bounds.dart',
                    'LatLngBounds',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'pixelOrigin',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'initialCamera': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
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
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      '_computeVisibleBounds': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/geo/latlng_bounds.dart',
                'LatLngBounds',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'maybeOf': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
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
                'package:flutter_map/src/map/camera/camera.dart',
                'MapCamera',
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

      'withNonRotatedSize': BridgeMethodDef(
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
          params: [
            BridgeParameter(
              'nonRotatedSize',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
              ),
              false,
            ),
          ],
        ),
      ),

      'withRotation': BridgeMethodDef(
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
          params: [
            BridgeParameter(
              'rotation',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'withOptions': BridgeMethodDef(
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
          params: [
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
              false,
            ),
          ],
        ),
      ),

      'withPosition': BridgeMethodDef(
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
          namedParams: [
            BridgeParameter(
              'center',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      '_adjustPositionForSeamlessScrolling': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'position',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'calculateRotatedSize': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'rotation',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'nonRotatedSize',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
              ),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),

      'projectAtZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'latlng',
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
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'unprojectAtZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'point',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),

            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'getWorldWidthAtZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'getZoomScale': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'toZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'fromZoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'getScaleZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'scale',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'getPixelWorldBounds': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Rect'), []),
            nullable: true,
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'getOffsetFromOrigin': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'pos',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'getNewPixelOrigin': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          ),
          namedParams: [],
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
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'pixelBoundsAtZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Rect'), []),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'latLngToScreenOffset': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'latLng',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'screenOffsetToLatLng': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),
          ],
        ),
      ),

      'rotatePoint': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          ),
          namedParams: [
            BridgeParameter(
              'counterRotation',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'mapCenter',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),

            BridgeParameter(
              'point',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),
          ],
        ),
      ),

      'clampZoom': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),

      'offsetToCrs': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
              ),
              false,
            ),

            BridgeParameter(
              'zoom',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'focusedZoomCenter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'cursorPos',
              BridgeTypeAnnotation(
                BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
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
    },
    getters: {
      'visibleBounds': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:flutter_map/src/geo/latlng_bounds.dart',
                'LatLngBounds',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'size': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'pixelOrigin': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'rotationRad': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'pixelBounds': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Rect'), []),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {
      'kImpossibleSize': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
        ),
        isStatic: true,
      ),

      'crs': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:flutter_map/src/geo/crs.dart', 'Crs'),
            [],
          ),
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

      'center': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec('package:latlong2/latlong.dart', 'LatLng'),
            [],
          ),
        ),
        isStatic: false,
      ),

      'zoom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'rotation': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'nonRotatedSize': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
        ),
        isStatic: false,
      ),

      '_cameraSize': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Size'), []),
          nullable: true,
        ),
        isStatic: false,
      ),

      '_pixelBounds': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Rect'), []),
          nullable: true,
        ),
        isStatic: false,
      ),

      '_bounds': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_map/src/geo/latlng_bounds.dart',
              'LatLngBounds',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      '_pixelOrigin': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(BridgeTypeSpec('dart:ui', 'Offset'), []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MapCamera.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MapCamera.wrap(
      MapCamera(
        crs: args[0]!.$value,
        center: args[1]!.$value,
        zoom: args[2]!.$value,
        rotation: args[3]!.$value,
        nonRotatedSize: args[4]!.$value,
        minZoom: args[5]?.$value,
        maxZoom: args[6]?.$value,
        size: args[7]?.$value,
        pixelBounds: args[8]?.$value,
        bounds: args[9]?.$value,
        pixelOrigin: args[10]?.$value,
      ),
    );
  }

  /// Wrapper for the [MapCamera.initialCamera] constructor
  static $Value? $initialCamera(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $MapCamera.wrap(MapCamera.initialCamera(args[0]!.$value));
  }

  /// Wrapper for the [MapCamera.maybeOf] method
  static $Value? $maybeOf(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapCamera.maybeOf(args[0]!.$value);
    return value == null ? const $null() : $MapCamera.wrap(value);
  }

  /// Wrapper for the [MapCamera.of] method
  static $Value? $of(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = MapCamera.of(args[0]!.$value);
    return $MapCamera.wrap(value);
  }

  /// Wrapper for the [MapCamera.calculateRotatedSize] method
  static $Value? $calculateRotatedSize(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = MapCamera.calculateRotatedSize(
      args[0]!.$value,
      args[1]!.$value,
    );
    return $Size.wrap(value);
  }

  /// Wrapper for the [MapCamera.kImpossibleSize] getter
  static $Value? $kImpossibleSize(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = MapCamera.kImpossibleSize;
    return $Size.wrap(value);
  }

  final $Instance _superclass;

  @override
  final MapCamera $value;

  @override
  MapCamera get $reified => $value;

  /// Wrap a [MapCamera] in a [$MapCamera]
  $MapCamera.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'crs':
        final _crs = $value.crs;
        return runtime.wrapAlways(_crs);

      case 'minZoom':
        final _minZoom = $value.minZoom;
        return _minZoom == null ? const $null() : $double(_minZoom);

      case 'maxZoom':
        final _maxZoom = $value.maxZoom;
        return _maxZoom == null ? const $null() : $double(_maxZoom);

      case 'center':
        final _center = $value.center;
        return runtime.wrapAlways(_center);

      case 'zoom':
        final _zoom = $value.zoom;
        return $double(_zoom);

      case 'rotation':
        final _rotation = $value.rotation;
        return $double(_rotation);

      case 'nonRotatedSize':
        final _nonRotatedSize = $value.nonRotatedSize;
        return $Size.wrap(_nonRotatedSize);

      case 'visibleBounds':
        final _visibleBounds = $value.visibleBounds;
        return $LatLngBounds.wrap(_visibleBounds);

      case 'size':
        final _size = $value.size;
        return $Size.wrap(_size);

      case 'pixelOrigin':
        final _pixelOrigin = $value.pixelOrigin;
        return $Offset.wrap(_pixelOrigin);

      case 'rotationRad':
        final _rotationRad = $value.rotationRad;
        return $double(_rotationRad);

      case 'pixelBounds':
        final _pixelBounds = $value.pixelBounds;
        return $Rect.wrap(_pixelBounds);
      case 'withNonRotatedSize':
        return __withNonRotatedSize;

      case 'withRotation':
        return __withRotation;

      case 'withOptions':
        return __withOptions;

      case 'withPosition':
        return __withPosition;

      case 'projectAtZoom':
        return __projectAtZoom;

      case 'unprojectAtZoom':
        return __unprojectAtZoom;

      case 'getWorldWidthAtZoom':
        return __getWorldWidthAtZoom;

      case 'getZoomScale':
        return __getZoomScale;

      case 'getScaleZoom':
        return __getScaleZoom;

      case 'getPixelWorldBounds':
        return __getPixelWorldBounds;

      case 'getOffsetFromOrigin':
        return __getOffsetFromOrigin;

      case 'getNewPixelOrigin':
        return __getNewPixelOrigin;

      case 'pixelBoundsAtZoom':
        return __pixelBoundsAtZoom;

      case 'latLngToScreenOffset':
        return __latLngToScreenOffset;

      case 'screenOffsetToLatLng':
        return __screenOffsetToLatLng;

      case 'rotatePoint':
        return __rotatePoint;

      case 'clampZoom':
        return __clampZoom;

      case 'offsetToCrs':
        return __offsetToCrs;

      case 'focusedZoomCenter':
        return __focusedZoomCenter;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __withNonRotatedSize = $Function(_withNonRotatedSize);
  static $Value? _withNonRotatedSize(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.withNonRotatedSize(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  static const $Function __withRotation = $Function(_withRotation);
  static $Value? _withRotation(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.withRotation(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  static const $Function __withOptions = $Function(_withOptions);
  static $Value? _withOptions(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.withOptions(args[0]!.$value);
    return $MapCamera.wrap(result);
  }

  static const $Function __withPosition = $Function(_withPosition);
  static $Value? _withPosition(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.withPosition(
      center: args[0]?.$value,
      zoom: args[1]?.$value,
    );
    return $MapCamera.wrap(result);
  }

  static const $Function __projectAtZoom = $Function(_projectAtZoom);
  static $Value? _projectAtZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.projectAtZoom(args[0]!.$value, args[1]?.$value);
    return $Offset.wrap(result);
  }

  static const $Function __unprojectAtZoom = $Function(_unprojectAtZoom);
  static $Value? _unprojectAtZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.unprojectAtZoom(
      args[0]!.$value,
      args[1]?.$value,
    );
    return runtime.wrapAlways(result);
  }

  static const $Function __getWorldWidthAtZoom = $Function(
    _getWorldWidthAtZoom,
  );
  static $Value? _getWorldWidthAtZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.getWorldWidthAtZoom(args[0]?.$value);
    return $double(result);
  }

  static const $Function __getZoomScale = $Function(_getZoomScale);
  static $Value? _getZoomScale(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.getZoomScale(args[0]!.$value, args[1]!.$value);
    return $double(result);
  }

  static const $Function __getScaleZoom = $Function(_getScaleZoom);
  static $Value? _getScaleZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.getScaleZoom(args[0]!.$value);
    return $double(result);
  }

  static const $Function __getPixelWorldBounds = $Function(
    _getPixelWorldBounds,
  );
  static $Value? _getPixelWorldBounds(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.getPixelWorldBounds(args[0]!.$value);
    return result == null ? const $null() : $Rect.wrap(result);
  }

  static const $Function __getOffsetFromOrigin = $Function(
    _getOffsetFromOrigin,
  );
  static $Value? _getOffsetFromOrigin(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.getOffsetFromOrigin(args[0]!.$value);
    return $Offset.wrap(result);
  }

  static const $Function __getNewPixelOrigin = $Function(_getNewPixelOrigin);
  static $Value? _getNewPixelOrigin(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.getNewPixelOrigin(
      args[0]!.$value,
      args[1]?.$value,
    );
    return $Offset.wrap(result);
  }

  static const $Function __pixelBoundsAtZoom = $Function(_pixelBoundsAtZoom);
  static $Value? _pixelBoundsAtZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.pixelBoundsAtZoom(args[0]!.$value);
    return $Rect.wrap(result);
  }

  static const $Function __latLngToScreenOffset = $Function(
    _latLngToScreenOffset,
  );
  static $Value? _latLngToScreenOffset(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.latLngToScreenOffset(args[0]!.$value);
    return $Offset.wrap(result);
  }

  static const $Function __screenOffsetToLatLng = $Function(
    _screenOffsetToLatLng,
  );
  static $Value? _screenOffsetToLatLng(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.screenOffsetToLatLng(args[0]!.$value);
    return runtime.wrapAlways(result);
  }

  static const $Function __rotatePoint = $Function(_rotatePoint);
  static $Value? _rotatePoint(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.rotatePoint(
      args[0]!.$value,
      args[1]!.$value,
      counterRotation: args[2]?.$value ?? true,
    );
    return $Offset.wrap(result);
  }

  static const $Function __clampZoom = $Function(_clampZoom);
  static $Value? _clampZoom(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.clampZoom(args[0]!.$value);
    return $double(result);
  }

  static const $Function __offsetToCrs = $Function(_offsetToCrs);
  static $Value? _offsetToCrs(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.offsetToCrs(args[0]!.$value, args[1]?.$value);
    return runtime.wrapAlways(result);
  }

  static const $Function __focusedZoomCenter = $Function(_focusedZoomCenter);
  static $Value? _focusedZoomCenter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $MapCamera;
    final result = self.$value.focusedZoomCenter(
      args[0]!.$value,
      args[1]!.$value,
    );
    return runtime.wrapAlways(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
