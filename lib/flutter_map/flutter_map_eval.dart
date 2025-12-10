import 'package:dart_eval/dart_eval_bridge.dart';

import 'src/flutter_map.dart';
import 'src/geo/latlng_bounds.eval.dart';
import 'src/gestures/interactive_flag.eval.dart';
import 'src/gestures/map_events.eval.dart';
import 'src/gestures/positioned_tap_detector_2.eval.dart';
import 'src/layer/circle_layer.eval.dart';
import 'src/layer/circle_marker.eval.dart';
import 'src/layer/layer_hit_result.eval.dart';
import 'src/layer/marker.eval.dart';
import 'src/layer/marker_layer.eval.dart';
import 'src/layer/mobile_layer_transformer.eval.dart';
import 'src/layer/scalebar.eval.dart';
import 'src/map/camera.eval.dart';
import 'src/map/camera_constraint.eval.dart';
import 'src/map/camera_fit.eval.dart';
import 'src/map/cursor_keyboard_rotation.eval.dart';
import 'src/map/interaction.eval.dart';
import 'src/map/keyboard.eval.dart';
import 'src/map/map_controller.eval.dart';
import 'src/map/options.eval.dart';
import 'src/map/widget.eval.dart';

/// [EvalPlugin] for flutter_map
class FlutterMapPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:flutter_map';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($LatLngBounds.$declaration);
    registry.defineBridgeClass($InteractiveFlag.$declaration);
    registry.defineBridgeClass($MapEvent.$declaration);
    registry.defineBridgeClass($MapEventWithMove.$declaration);
    registry.defineBridgeClass($MapEventTap.$declaration);
    registry.defineBridgeClass($MapEventSecondaryTap.$declaration);
    registry.defineBridgeClass($MapEventLongPress.$declaration);
    registry.defineBridgeClass($MapEventMoveStart.$declaration);
    registry.defineBridgeClass($MapEventMoveEnd.$declaration);
    registry.defineBridgeClass($MapEventFlingAnimation.$declaration);
    registry.defineBridgeClass($MapEventFlingAnimationNotStarted.$declaration);
    registry.defineBridgeClass($MapEventFlingAnimationStart.$declaration);
    registry.defineBridgeClass($MapEventFlingAnimationEnd.$declaration);
    registry.defineBridgeClass($MapEventDoubleTapZoom.$declaration);
    registry.defineBridgeClass($MapEventScrollWheelZoom.$declaration);
    registry.defineBridgeClass($MapEventDoubleTapZoomStart.$declaration);
    registry.defineBridgeClass($MapEventDoubleTapZoomEnd.$declaration);
    registry.defineBridgeClass($MapEventRotate.$declaration);
    registry.defineBridgeClass($MapEventRotateStart.$declaration);
    registry.defineBridgeClass($MapEventRotateEnd.$declaration);
    registry.defineBridgeClass($MapEventNonRotatedSizeChange.$declaration);
    registry.defineBridgeClass($TapPosition.$declaration);
    registry.defineBridgeClass($CircleLayer.$declaration);
    registry.defineBridgeClass($CircleMarker.$declaration);
    registry.defineBridgeClass($Marker.$declaration);
    registry.defineBridgeClass($MarkerLayer.$declaration);
    registry.defineBridgeClass($Scalebar.$declaration);
    registry.defineBridgeClass($MobileLayerTransformer.$declaration);
    registry.defineBridgeClass($MapCamera.$declaration);
    registry.defineBridgeClass($CameraConstraint.$declaration);
    registry.defineBridgeClass($ContainCameraCenter.$declaration);
    registry.defineBridgeClass($ContainCamera.$declaration);
    registry.defineBridgeClass($ContainCameraLatitude.$declaration);
    registry.defineBridgeClass($CameraFit.$declaration);
    registry.defineBridgeClass($FitBounds.$declaration);
    registry.defineBridgeClass($FitInsideBounds.$declaration);
    registry.defineBridgeClass($FitCoordinates.$declaration);
    registry.defineBridgeClass($MapController.$declaration);
    registry.defineBridgeClass($CursorKeyboardRotationOptions.$declaration);
    registry.defineBridgeClass($InteractionOptions.$declaration);
    registry.defineBridgeClass($KeyboardOptions.$declaration);
    registry.defineBridgeClass($MapOptions.$declaration);
    registry.defineBridgeClass($FlutterMap.$declaration);
    registry.defineBridgeClass($LayerHitResult.$declaration);
    registry.defineBridgeEnum($MapEventSource.$declaration);
    registry.defineBridgeEnum($CursorRotationBehaviour.$declaration);
    registry.addSource(
      DartSource('package:flutter_map/flutter_map.dart', flutterMapSource),
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $LatLngBounds.configureForRuntime(runtime);
    $InteractiveFlag.configureForRuntime(runtime);
    $MapEvent.configureForRuntime(runtime);
    $MapEventWithMove.configureForRuntime(runtime);
    $MapEventTap.configureForRuntime(runtime);
    $MapEventSecondaryTap.configureForRuntime(runtime);
    $MapEventLongPress.configureForRuntime(runtime);
    $MapEventMoveStart.configureForRuntime(runtime);
    $MapEventMoveEnd.configureForRuntime(runtime);
    $MapEventFlingAnimation.configureForRuntime(runtime);
    $MapEventFlingAnimationNotStarted.configureForRuntime(runtime);
    $MapEventFlingAnimationStart.configureForRuntime(runtime);
    $MapEventFlingAnimationEnd.configureForRuntime(runtime);
    $MapEventDoubleTapZoom.configureForRuntime(runtime);
    $MapEventScrollWheelZoom.configureForRuntime(runtime);
    $MapEventDoubleTapZoomStart.configureForRuntime(runtime);
    $MapEventDoubleTapZoomEnd.configureForRuntime(runtime);
    $MapEventRotate.configureForRuntime(runtime);
    $MapEventRotateStart.configureForRuntime(runtime);
    $MapEventRotateEnd.configureForRuntime(runtime);
    $MapEventNonRotatedSizeChange.configureForRuntime(runtime);
    $TapPosition.configureForRuntime(runtime);
    $CircleLayer.configureForRuntime(runtime);
    $CircleMarker.configureForRuntime(runtime);
    $Marker.configureForRuntime(runtime);
    $MarkerLayer.configureForRuntime(runtime);
    $Scalebar.configureForRuntime(runtime);
    $MobileLayerTransformer.configureForRuntime(runtime);
    $MapCamera.configureForRuntime(runtime);
    $CameraConstraint.configureForRuntime(runtime);
    $ContainCameraCenter.configureForRuntime(runtime);
    $ContainCamera.configureForRuntime(runtime);
    $ContainCameraLatitude.configureForRuntime(runtime);
    $CameraFit.configureForRuntime(runtime);
    $FitBounds.configureForRuntime(runtime);
    $FitInsideBounds.configureForRuntime(runtime);
    $FitCoordinates.configureForRuntime(runtime);
    $MapController.configureForRuntime(runtime);
    $CursorKeyboardRotationOptions.configureForRuntime(runtime);
    $InteractionOptions.configureForRuntime(runtime);
    $KeyboardOptions.configureForRuntime(runtime);
    $MapOptions.configureForRuntime(runtime);
    $FlutterMap.configureForRuntime(runtime);
    $LayerHitResult.configureForRuntime(runtime);
    $MapEventSource.configureForRuntime(runtime);
    $CursorRotationBehaviour.configureForRuntime(runtime);
  }
}
