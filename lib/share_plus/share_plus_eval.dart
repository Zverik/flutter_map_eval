import 'package:dart_eval/dart_eval_bridge.dart';

class SharePlusEval implements EvalPlugin {
  @override
  String get identifier => 'package:share_plus';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    // TODO: implement configureForCompile
  }

  @override
  void configureForRuntime(Runtime runtime) {
    // TODO: implement configureForRuntime
  }
}