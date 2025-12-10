import 'package:dart_eval/dart_eval_bridge.dart';

class UrlLauncherEval implements EvalPlugin {
  @override
  String get identifier => 'package:url_launcher';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    // TODO: implement configureForCompile
  }

  @override
  void configureForRuntime(Runtime runtime) {
    // TODO: implement configureForRuntime
  }
}