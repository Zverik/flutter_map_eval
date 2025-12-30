import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/country_coder/src/country_coder.dart';
import 'src/country_coder.eval.dart';
import 'src/location_set.eval.dart';
import 'src/region_feature.eval.dart';

export 'src/country_coder.eval.dart';
export 'src/location_set.eval.dart';
export 'src/region_feature.eval.dart';

/// [EvalPlugin] for country_coder
class CountryCoderPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:country_coder';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($CountryCoder.$declaration);
    registry.defineBridgeClass($LocationSet.$declaration);
    registry.defineBridgeClass($LocationSetRadius.$declaration);
    registry.defineBridgeClass($RegionFeature.$declaration);
    registry.defineBridgeEnum($RegionLevel.$declaration);
    registry.defineBridgeEnum($RegionIsoStatus.$declaration);
    registry.defineBridgeEnum($RegionDrivingSide.$declaration);
    registry.defineBridgeEnum($RegionSpeedUnit.$declaration);
    registry.defineBridgeEnum($RegionHeightUnit.$declaration);
    registry.defineBridgeEnum($RegionProperties.$declaration);

    registry.addSource(
      DartSource(
        'package:country_coder/country_coder.dart',
        countryCoderSource,
      ),
    );

    registry.addExportedLibraryMapping(
      'package:country_coder/src',
      'package:flutter_map_eval/country_coder/country_coder_eval.dart',
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $CountryCoder.configureForRuntime(runtime);
    $LocationSet.configureForRuntime(runtime);
    $LocationSetRadius.configureForRuntime(runtime);
    $RegionFeature.configureForRuntime(runtime);
    $RegionLevel.configureForRuntime(runtime);
    $RegionIsoStatus.configureForRuntime(runtime);
    $RegionDrivingSide.configureForRuntime(runtime);
    $RegionSpeedUnit.configureForRuntime(runtime);
    $RegionHeightUnit.configureForRuntime(runtime);
    $RegionProperties.configureForRuntime(runtime);
  }
}
