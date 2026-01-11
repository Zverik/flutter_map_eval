import 'package:dart_eval/dart_eval_bridge.dart';

import 'src/types.eval.dart';
import 'src/url_launcher_uri.eval.dart';

class UrlLauncherPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:url_launcher';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($WebViewConfiguration.$declaration);
    registry.defineBridgeClass($BrowserConfiguration.$declaration);
    registry.defineBridgeEnum($LaunchMode.$declaration);
    registry.defineBridgeTopLevelFunction($launchUrlFn.$declaration);
    registry.defineBridgeTopLevelFunction($canLaunchUrlFn.$declaration);
    registry.defineBridgeTopLevelFunction($closeInAppWebViewFn.$declaration);
    registry.defineBridgeTopLevelFunction($supportsLaunchModeFn.$declaration);
    registry.defineBridgeTopLevelFunction(
      $supportsCloseForLaunchModeFn.$declaration,
    );
    registry.addExportedLibraryMapping(
      'package:url_launcher',
      'package:flutter_map_eval/url_launcher/url_launcher_eval.dart',
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $WebViewConfiguration.configureForRuntime(runtime);
    $BrowserConfiguration.configureForRuntime(runtime);
    $LaunchMode.configureForRuntime(runtime);
    $launchUrlFn.configureForRuntime(runtime);
    $canLaunchUrlFn.configureForRuntime(runtime);
    $closeInAppWebViewFn.configureForRuntime(runtime);
    $supportsLaunchModeFn.configureForRuntime(runtime);
    $supportsCloseForLaunchModeFn.configureForRuntime(runtime);
  }
}
