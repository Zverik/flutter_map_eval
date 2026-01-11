import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/adaptive_dialog/src/adaptive_dialog.dart';
import 'src/adaptive_style.eval.dart';
import 'src/alert_dialog_action.eval.dart';
import 'src/modal_action_sheet.eval.dart';
import 'src/sheet_action.eval.dart';
import 'src/show_alert_dialog.eval.dart';
import 'src/show_confirmation_dialog.eval.dart';
import 'src/show_ok_alert_dialog.eval.dart';
import 'src/show_ok_cancel_alert_dialog.eval.dart';
import 'src/show_text_answer_dialog.eval.dart';
import 'src/show_text_input_dialog.eval.dart';

/// [EvalPlugin] for adaptive_dialog
class AdaptiveDialogPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:adaptive_dialog';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($AlertDialogAction.$declaration);
    registry.defineBridgeClass(
      $MaterialModalActionSheetConfiguration.$declaration,
    );
    registry.defineBridgeClass($SheetAction.$declaration);
    registry.defineBridgeClass($DialogTextField.$declaration);
    registry.defineBridgeEnum($AdaptiveStyle.$declaration);
    registry.defineBridgeEnum($OkCancelResult.$declaration);
    registry.defineBridgeEnum($OkCancelAlertDefaultType.$declaration);
    registry.defineBridgeTopLevelFunction($showAlertDialogFn.$declaration);
    registry.defineBridgeTopLevelFunction(
      $showConfirmationDialogFn.$declaration,
    );
    registry.defineBridgeTopLevelFunction($showOkAlertDialogFn.$declaration);
    registry.defineBridgeTopLevelFunction(
      $showOkCancelAlertDialogFn.$declaration,
    );
    registry.defineBridgeTopLevelFunction($showModalActionSheetFn.$declaration);
    registry.defineBridgeTopLevelFunction($showTextAnswerDialogFn.$declaration);
    registry.defineBridgeTopLevelFunction($showTextInputDialogFn.$declaration);
    registry.addSource(
      DartSource(
        'package:adaptive_dialog/adaptive_dialog.dart',
        adaptiveDialogSource,
      ),
    );
    registry.addExportedLibraryMapping(
      'package:adaptive_dialog/src',
      'package:flutter_map_eval/adaptive_dialog/adaptive_dialog_eval.dart',
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $AlertDialogAction.configureForRuntime(runtime);
    $MaterialModalActionSheetConfiguration.configureForRuntime(runtime);
    $SheetAction.configureForRuntime(runtime);
    $DialogTextField.configureForRuntime(runtime);
    $AdaptiveStyle.configureForRuntime(runtime);
    $OkCancelResult.configureForRuntime(runtime);
    $OkCancelAlertDefaultType.configureForRuntime(runtime);
    $showAlertDialogFn.configureForRuntime(runtime);
    $showConfirmationDialogFn.configureForRuntime(runtime);
    $showOkAlertDialogFn.configureForRuntime(runtime);
    $showOkCancelAlertDialogFn.configureForRuntime(runtime);
    $showModalActionSheetFn.configureForRuntime(runtime);
    $showTextAnswerDialogFn.configureForRuntime(runtime);
    $showTextInputDialogFn.configureForRuntime(runtime);
  }
}
