import 'package:dart_eval/dart_eval_bridge.dart';
import 'src/list_view_builder_options.eval.dart';
import 'src/responsive_grid_list.eval.dart';

/// [EvalPlugin] for responsive_grid_list
class ResponsiveGridListPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:responsive_grid_list';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($ListViewBuilderOptions.$declaration);
    registry.defineBridgeClass($ResponsiveGridList.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $ListViewBuilderOptions.configureForRuntime(runtime);
    $ResponsiveGridList.configureForRuntime(runtime);
  }
}
