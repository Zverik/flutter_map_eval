import 'package:country_coder/country_coder.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'region_feature.eval.dart';

/// dart_eval wrapper binding for [CountryCoder]
class $CountryCoder implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:country_coder/src/country_coder.dart',
      'CountryCoder.prepareData',
      $CountryCoder.$prepareData,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/country_coder.dart',
      'CountryCoder.instance*g',
      $CountryCoder.$instance,
    );
  }

  /// Compile-time type specification of [$CountryCoder]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/country_coder.dart',
    'CountryCoder',
  );

  /// Compile-time type declaration of [$CountryCoder]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CountryCoder]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {},

    methods: {
      'load': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:country_coder/src/country_coder.dart',
                'CountryCoder',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'prepared',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'prepareData': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              '_',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              false,
            ),
          ],
        ),

        isStatic: true,
      ),

      'smallestOrMatchingRegion': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:country_coder/src/region_feature.dart',
                'RegionFeature',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'region': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:country_coder/src/region_feature.dart',
                'RegionFeature',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'withProp',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionProperties',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'regionsContaining': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionFeature',
                  ),
                  [],
                ),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'strict',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'iso1A2Code': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'iso1A3Code': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'iso1N3Code': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'm49Code': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'wikidataQID': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'emojiFlag': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'ccTLD': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'level',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'maxLevel',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionLevel',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'iso1A2Codes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'iso1A3Codes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'iso1N3Codes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'm49Codes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'wikidataQIDs': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'emojiFlags': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'ccTLDs': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'bbox',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'regionsIn': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionFeature',
                  ),
                  [],
                ),
              ),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              false,
            ),

            BridgeParameter(
              'strict',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
        ),
      ),

      'isIn': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'inside',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'isInEuropeanUnion': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'isInUnitedNations': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'drivingSide': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:country_coder/src/region_feature.dart',
                'RegionDrivingSide',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'roadSpeedUnit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:country_coder/src/region_feature.dart',
                'RegionSpeedUnit',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'roadHeightUnit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:country_coder/src/region_feature.dart',
                'RegionHeightUnit',
              ),
              [],
            ),
            nullable: true,
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'callingCodes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
      ),
    },
    getters: {
      'ready': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {
      'instance': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:country_coder/src/country_coder.dart',
              'CountryCoder',
            ),
            [],
          ),
        ),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [CountryCoder.prepareData] method
  static $Value? $prepareData(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = CountryCoder.prepareData(args[0]!.$value);
    return $List.view(value, (e) => $Object(e));
  }

  /// Wrapper for the [CountryCoder.instance] getter
  static $Value? $instance(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = CountryCoder.instance;
    return $CountryCoder.wrap(value);
  }

  final $Instance _superclass;

  @override
  final CountryCoder $value;

  @override
  CountryCoder get $reified => $value;

  /// Wrap a [CountryCoder] in a [$CountryCoder]
  $CountryCoder.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'ready':
        return $bool($value.ready);
      case 'load':
        return __load;

      case 'smallestOrMatchingRegion':
        return __smallestOrMatchingRegion;

      case 'region':
        return __region;

      case 'regionsContaining':
        return __regionsContaining;

      case 'iso1A2Code':
        return __iso1A2Code;

      case 'iso1A3Code':
        return __iso1A3Code;

      case 'iso1N3Code':
        return __iso1N3Code;

      case 'm49Code':
        return __m49Code;

      case 'wikidataQID':
        return __wikidataQID;

      case 'emojiFlag':
        return __emojiFlag;

      case 'ccTLD':
        return __ccTLD;

      case 'iso1A2Codes':
        return __iso1A2Codes;

      case 'iso1A3Codes':
        return __iso1A3Codes;

      case 'iso1N3Codes':
        return __iso1N3Codes;

      case 'm49Codes':
        return __m49Codes;

      case 'wikidataQIDs':
        return __wikidataQIDs;

      case 'emojiFlags':
        return __emojiFlags;

      case 'ccTLDs':
        return __ccTLDs;

      case 'regionsIn':
        return __regionsIn;

      case 'isIn':
        return __isIn;

      case 'isInEuropeanUnion':
        return __isInEuropeanUnion;

      case 'isInUnitedNations':
        return __isInUnitedNations;

      case 'drivingSide':
        return __drivingSide;

      case 'roadSpeedUnit':
        return __roadSpeedUnit;

      case 'roadHeightUnit':
        return __roadHeightUnit;

      case 'callingCodes':
        return __callingCodes;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __load = $Function(_load);
  static $Value? _load(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CountryCoder;
    final result = self.$value.load((args[0]?.$reified as List?)?.cast());
    return $CountryCoder.wrap(result);
  }

  static const $Function __smallestOrMatchingRegion = $Function(
    _smallestOrMatchingRegion,
  );
  static $Value? _smallestOrMatchingRegion(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.smallestOrMatchingRegion(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return result == null ? const $null() : $RegionFeature.wrap(result);
  }

  static const $Function __region = $Function(_region);
  static $Value? _region(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CountryCoder;
    final result = self.$value.region(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
      withProp: args[5]?.$value,
    );
    return result == null ? const $null() : $RegionFeature.wrap(result);
  }

  static const $Function __regionsContaining = $Function(_regionsContaining);
  static $Value? _regionsContaining(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.regionsContaining(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      bbox: (args[2]?.$reified as List?)?.cast(),
      query: args[3]?.$value,
      strict: args[4]?.$value ?? false,
    );
    return $List.view(result, (e) => $RegionFeature.wrap(e));
  }

  static const $Function __iso1A2Code = $Function(_iso1A2Code);
  static $Value? _iso1A2Code(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.iso1A2Code(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __iso1A3Code = $Function(_iso1A3Code);
  static $Value? _iso1A3Code(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.iso1A3Code(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __iso1N3Code = $Function(_iso1N3Code);
  static $Value? _iso1N3Code(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.iso1N3Code(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __m49Code = $Function(_m49Code);
  static $Value? _m49Code(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CountryCoder;
    final result = self.$value.m49Code(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __wikidataQID = $Function(_wikidataQID);
  static $Value? _wikidataQID(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.wikidataQID(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __emojiFlag = $Function(_emojiFlag);
  static $Value? _emojiFlag(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.emojiFlag(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __ccTLD = $Function(_ccTLD);
  static $Value? _ccTLD(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CountryCoder;
    final result = self.$value.ccTLD(
      lat: args[0]?.$value,
      lon: args[1]?.$value,
      query: args[2]?.$value,
      level: args[3]?.$value,
      maxLevel: args[4]?.$value,
    );
    return result == null ? const $null() : $String(result);
  }

  static const $Function __iso1A2Codes = $Function(_iso1A2Codes);
  static $Value? _iso1A2Codes(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.iso1A2Codes(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __iso1A3Codes = $Function(_iso1A3Codes);
  static $Value? _iso1A3Codes(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.iso1A3Codes(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __iso1N3Codes = $Function(_iso1N3Codes);
  static $Value? _iso1N3Codes(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.iso1N3Codes(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __m49Codes = $Function(_m49Codes);
  static $Value? _m49Codes(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.m49Codes(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __wikidataQIDs = $Function(_wikidataQIDs);
  static $Value? _wikidataQIDs(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.wikidataQIDs(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __emojiFlags = $Function(_emojiFlags);
  static $Value? _emojiFlags(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.emojiFlags(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __ccTLDs = $Function(_ccTLDs);
  static $Value? _ccTLDs(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CountryCoder;
    final result = self.$value.ccTLDs(
      args[0]!.$value,
      args[1]!.$value,
      (args[2]!.$reified as List).cast(),
    );
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __regionsIn = $Function(_regionsIn);
  static $Value? _regionsIn(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.regionsIn(
      args[0]!.$value,
      args[1]?.$value ?? false,
    );
    return $List.view(result, (e) => $RegionFeature.wrap(e));
  }

  static const $Function __isIn = $Function(_isIn);
  static $Value? _isIn(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $CountryCoder;
    final result = self.$value.isIn(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
      inside: args[3]?.$value,
    );
    return $bool(result);
  }

  static const $Function __isInEuropeanUnion = $Function(_isInEuropeanUnion);
  static $Value? _isInEuropeanUnion(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.isInEuropeanUnion(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return $bool(result);
  }

  static const $Function __isInUnitedNations = $Function(_isInUnitedNations);
  static $Value? _isInUnitedNations(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.isInUnitedNations(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return $bool(result);
  }

  static const $Function __drivingSide = $Function(_drivingSide);
  static $Value? _drivingSide(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.drivingSide(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return result == null ? const $null() : $RegionDrivingSide.wrap(result);
  }

  static const $Function __roadSpeedUnit = $Function(_roadSpeedUnit);
  static $Value? _roadSpeedUnit(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.roadSpeedUnit(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return result == null ? const $null() : $RegionSpeedUnit.wrap(result);
  }

  static const $Function __roadHeightUnit = $Function(_roadHeightUnit);
  static $Value? _roadHeightUnit(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.roadHeightUnit(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return result == null ? const $null() : $RegionHeightUnit.wrap(result);
  }

  static const $Function __callingCodes = $Function(_callingCodes);
  static $Value? _callingCodes(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $CountryCoder;
    final result = self.$value.callingCodes(
      lon: args[0]?.$value,
      lat: args[1]?.$value,
      query: args[2]?.$value,
    );
    return $List.view(result, (e) => $String(e));
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
