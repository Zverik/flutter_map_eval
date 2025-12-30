import 'package:country_coder/country_coder.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval enum wrapper binding for [RegionLevel]
class $RegionLevel implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:country_coder/src/region_feature.dart',
      'RegionLevel',
      $RegionLevel._$values,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionLevel.values*g',
      $RegionLevel.$values,
    );
  }

  /// Compile-time type specification of [$RegionLevel]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionLevel',
  );

  /// Compile-time type declaration of [$RegionLevel]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionLevel]
  static const $declaration = BridgeEnumDef(
    $type,

    values: [
      'subterritory',
      'territory',
      'subcountryGroup',
      'country',
      'sharedLandform',
      'intermediateRegion',
      'subregion',
      'region',
      'subunion',
      'europeanUnion',
      'unitedNations',
      'world',
    ],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'subterritory': $RegionLevel.wrap(RegionLevel.subterritory),
    'territory': $RegionLevel.wrap(RegionLevel.territory),
    'subcountryGroup': $RegionLevel.wrap(RegionLevel.subcountryGroup),
    'country': $RegionLevel.wrap(RegionLevel.country),
    'sharedLandform': $RegionLevel.wrap(RegionLevel.sharedLandform),
    'intermediateRegion': $RegionLevel.wrap(RegionLevel.intermediateRegion),
    'subregion': $RegionLevel.wrap(RegionLevel.subregion),
    'region': $RegionLevel.wrap(RegionLevel.region),
    'subunion': $RegionLevel.wrap(RegionLevel.subunion),
    'europeanUnion': $RegionLevel.wrap(RegionLevel.europeanUnion),
    'unitedNations': $RegionLevel.wrap(RegionLevel.unitedNations),
    'world': $RegionLevel.wrap(RegionLevel.world),
  };

  /// Wrapper for the [RegionLevel.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = RegionLevel.values;
    return $List.view(value, (e) => $RegionLevel.wrap(e));
  }

  final $Instance _superclass;

  @override
  final RegionLevel $value;

  @override
  RegionLevel get $reified => $value;

  /// Wrap a [RegionLevel] in a [$RegionLevel]
  $RegionLevel.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [RegionIsoStatus]
class $RegionIsoStatus implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:country_coder/src/region_feature.dart',
      'RegionIsoStatus',
      $RegionIsoStatus._$values,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionIsoStatus.values*g',
      $RegionIsoStatus.$values,
    );
  }

  /// Compile-time type specification of [$RegionIsoStatus]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionIsoStatus',
  );

  /// Compile-time type declaration of [$RegionIsoStatus]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionIsoStatus]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['official', 'excReserved', 'userAssigned'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'official': $RegionIsoStatus.wrap(RegionIsoStatus.official),
    'excReserved': $RegionIsoStatus.wrap(RegionIsoStatus.excReserved),
    'userAssigned': $RegionIsoStatus.wrap(RegionIsoStatus.userAssigned),
  };

  /// Wrapper for the [RegionIsoStatus.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = RegionIsoStatus.values;
    return $List.view(value, (e) => $RegionIsoStatus.wrap(e));
  }

  final $Instance _superclass;

  @override
  final RegionIsoStatus $value;

  @override
  RegionIsoStatus get $reified => $value;

  /// Wrap a [RegionIsoStatus] in a [$RegionIsoStatus]
  $RegionIsoStatus.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [RegionDrivingSide]
class $RegionDrivingSide implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:country_coder/src/region_feature.dart',
      'RegionDrivingSide',
      $RegionDrivingSide._$values,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionDrivingSide.values*g',
      $RegionDrivingSide.$values,
    );
  }

  /// Compile-time type specification of [$RegionDrivingSide]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionDrivingSide',
  );

  /// Compile-time type declaration of [$RegionDrivingSide]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionDrivingSide]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['right', 'left'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'right': $RegionDrivingSide.wrap(RegionDrivingSide.right),
    'left': $RegionDrivingSide.wrap(RegionDrivingSide.left),
  };

  /// Wrapper for the [RegionDrivingSide.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = RegionDrivingSide.values;
    return $List.view(value, (e) => $RegionDrivingSide.wrap(e));
  }

  final $Instance _superclass;

  @override
  final RegionDrivingSide $value;

  @override
  RegionDrivingSide get $reified => $value;

  /// Wrap a [RegionDrivingSide] in a [$RegionDrivingSide]
  $RegionDrivingSide.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [RegionSpeedUnit]
class $RegionSpeedUnit implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:country_coder/src/region_feature.dart',
      'RegionSpeedUnit',
      $RegionSpeedUnit._$values,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionSpeedUnit.values*g',
      $RegionSpeedUnit.$values,
    );
  }

  /// Compile-time type specification of [$RegionSpeedUnit]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionSpeedUnit',
  );

  /// Compile-time type declaration of [$RegionSpeedUnit]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionSpeedUnit]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['mph', 'kmh'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'mph': $RegionSpeedUnit.wrap(RegionSpeedUnit.mph),
    'kmh': $RegionSpeedUnit.wrap(RegionSpeedUnit.kmh),
  };

  /// Wrapper for the [RegionSpeedUnit.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = RegionSpeedUnit.values;
    return $List.view(value, (e) => $RegionSpeedUnit.wrap(e));
  }

  final $Instance _superclass;

  @override
  final RegionSpeedUnit $value;

  @override
  RegionSpeedUnit get $reified => $value;

  /// Wrap a [RegionSpeedUnit] in a [$RegionSpeedUnit]
  $RegionSpeedUnit.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [RegionHeightUnit]
class $RegionHeightUnit implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:country_coder/src/region_feature.dart',
      'RegionHeightUnit',
      $RegionHeightUnit._$values,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionHeightUnit.values*g',
      $RegionHeightUnit.$values,
    );
  }

  /// Compile-time type specification of [$RegionHeightUnit]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionHeightUnit',
  );

  /// Compile-time type declaration of [$RegionHeightUnit]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionHeightUnit]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['feet', 'meters'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'feet': $RegionHeightUnit.wrap(RegionHeightUnit.feet),
    'meters': $RegionHeightUnit.wrap(RegionHeightUnit.meters),
  };

  /// Wrapper for the [RegionHeightUnit.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = RegionHeightUnit.values;
    return $List.view(value, (e) => $RegionHeightUnit.wrap(e));
  }

  final $Instance _superclass;

  @override
  final RegionHeightUnit $value;

  @override
  RegionHeightUnit get $reified => $value;

  /// Wrap a [RegionHeightUnit] in a [$RegionHeightUnit]
  $RegionHeightUnit.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [RegionProperties]
class $RegionProperties implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:country_coder/src/region_feature.dart',
      'RegionProperties',
      $RegionProperties._$values,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionProperties.values*g',
      $RegionProperties.$values,
    );
  }

  /// Compile-time type specification of [$RegionProperties]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionProperties',
  );

  /// Compile-time type declaration of [$RegionProperties]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionProperties]
  static const $declaration = BridgeEnumDef(
    $type,

    values: [
      'iso1A2',
      'iso1A3',
      'iso1N3',
      'm49',
      'wikidata',
      'emojiFlag',
      'ccTLD',
      'nameEn',
      'aliases',
      'country',
      'groups',
      'members',
      'level',
      'isoStatus',
      'driveSide',
      'roadSpeedUnit',
      'roadHeightUnit',
      'callingCodes',
    ],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'iso1A2': $RegionProperties.wrap(RegionProperties.iso1A2),
    'iso1A3': $RegionProperties.wrap(RegionProperties.iso1A3),
    'iso1N3': $RegionProperties.wrap(RegionProperties.iso1N3),
    'm49': $RegionProperties.wrap(RegionProperties.m49),
    'wikidata': $RegionProperties.wrap(RegionProperties.wikidata),
    'emojiFlag': $RegionProperties.wrap(RegionProperties.emojiFlag),
    'ccTLD': $RegionProperties.wrap(RegionProperties.ccTLD),
    'nameEn': $RegionProperties.wrap(RegionProperties.nameEn),
    'aliases': $RegionProperties.wrap(RegionProperties.aliases),
    'country': $RegionProperties.wrap(RegionProperties.country),
    'groups': $RegionProperties.wrap(RegionProperties.groups),
    'members': $RegionProperties.wrap(RegionProperties.members),
    'level': $RegionProperties.wrap(RegionProperties.level),
    'isoStatus': $RegionProperties.wrap(RegionProperties.isoStatus),
    'driveSide': $RegionProperties.wrap(RegionProperties.driveSide),
    'roadSpeedUnit': $RegionProperties.wrap(RegionProperties.roadSpeedUnit),
    'roadHeightUnit': $RegionProperties.wrap(RegionProperties.roadHeightUnit),
    'callingCodes': $RegionProperties.wrap(RegionProperties.callingCodes),
  };

  /// Wrapper for the [RegionProperties.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = RegionProperties.values;
    return $List.view(value, (e) => $RegionProperties.wrap(e));
  }

  final $Instance _superclass;

  @override
  final RegionProperties $value;

  @override
  RegionProperties get $reified => $value;

  /// Wrap a [RegionProperties] in a [$RegionProperties]
  $RegionProperties.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [RegionFeature]
class $RegionFeature implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionFeature.',
      $RegionFeature.$new,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/region_feature.dart',
      'RegionFeature.fromJson',
      $RegionFeature.$fromJson,
    );
  }

  /// Compile-time type specification of [$RegionFeature]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/region_feature.dart',
    'RegionFeature',
  );

  /// Compile-time type declaration of [$RegionFeature]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$RegionFeature]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'iso1A2',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'iso1A3',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'iso1N3',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'm49',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'wikidata',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'emojiFlag',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'ccTLD',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'nameEn',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'aliases',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'country',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'groups',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'members',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
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
              'isoStatus',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionIsoStatus',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'driveSide',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionDrivingSide',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'roadSpeedUnit',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionSpeedUnit',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'roadHeightUnit',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:country_coder/src/region_feature.dart',
                    'RegionHeightUnit',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'callingCodes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'hasGeometry',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
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

            BridgeParameter(
              'hasGeometry',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'getFeatureIDs': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'hasProperty': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'prop',
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
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'id': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'iso1A2': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'iso1A3': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'iso1N3': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'm49': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'wikidata': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'emojiFlag': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'ccTLD': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'nameEn': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'aliases': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'country': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'groups': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'members': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'level': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:country_coder/src/region_feature.dart',
              'RegionLevel',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'isoStatus': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:country_coder/src/region_feature.dart',
              'RegionIsoStatus',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'driveSide': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:country_coder/src/region_feature.dart',
              'RegionDrivingSide',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'roadSpeedUnit': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:country_coder/src/region_feature.dart',
              'RegionSpeedUnit',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'roadHeightUnit': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:country_coder/src/region_feature.dart',
              'RegionHeightUnit',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'callingCodes': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'hasGeometry': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [RegionFeature.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $RegionFeature.wrap(
      RegionFeature(
        id: args[0]?.$value,
        iso1A2: args[1]?.$value,
        iso1A3: args[2]?.$value,
        iso1N3: args[3]?.$value,
        m49: args[4]?.$value,
        wikidata: args[5]!.$value,
        emojiFlag: args[6]?.$value,
        ccTLD: args[7]?.$value,
        nameEn: args[8]!.$value,
        aliases: (args[9]?.$reified as List?)?.cast(),
        country: args[10]?.$value,
        groups: (args[11]?.$reified as List?)?.cast(),
        members: (args[12]?.$reified as List?)?.cast(),
        level: args[13]?.$value,
        isoStatus: args[14]?.$value,
        driveSide: args[15]?.$value,
        roadSpeedUnit: args[16]?.$value,
        roadHeightUnit: args[17]?.$value,
        callingCodes: (args[18]?.$reified as List?)?.cast(),
        hasGeometry: args[19]?.$value ?? true,
      ),
    );
  }

  /// Wrapper for the [RegionFeature.fromJson] constructor
  static $Value? $fromJson(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $RegionFeature.wrap(
      RegionFeature.fromJson(
        (args[0]!.$reified as Map).cast(),
        args[1]?.$value ?? true,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final RegionFeature $value;

  @override
  RegionFeature get $reified => $value;

  /// Wrap a [RegionFeature] in a [$RegionFeature]
  $RegionFeature.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'id':
        final _id = $value.id;
        return $String(_id);

      case 'iso1A2':
        final _iso1A2 = $value.iso1A2;
        return _iso1A2 == null ? const $null() : $String(_iso1A2);

      case 'iso1A3':
        final _iso1A3 = $value.iso1A3;
        return _iso1A3 == null ? const $null() : $String(_iso1A3);

      case 'iso1N3':
        final _iso1N3 = $value.iso1N3;
        return _iso1N3 == null ? const $null() : $String(_iso1N3);

      case 'm49':
        final _m49 = $value.m49;
        return _m49 == null ? const $null() : $String(_m49);

      case 'wikidata':
        final _wikidata = $value.wikidata;
        return $String(_wikidata);

      case 'emojiFlag':
        final _emojiFlag = $value.emojiFlag;
        return _emojiFlag == null ? const $null() : $String(_emojiFlag);

      case 'ccTLD':
        final _ccTLD = $value.ccTLD;
        return _ccTLD == null ? const $null() : $String(_ccTLD);

      case 'nameEn':
        final _nameEn = $value.nameEn;
        return $String(_nameEn);

      case 'aliases':
        final _aliases = $value.aliases;
        return $List.view(_aliases, (e) => $String(e));

      case 'country':
        final _country = $value.country;
        return _country == null ? const $null() : $String(_country);

      case 'groups':
        final _groups = $value.groups;
        return $List.view(_groups, (e) => $String(e));

      case 'members':
        final _members = $value.members;
        return $List.view(_members, (e) => $String(e));

      case 'level':
        final _level = $value.level;
        return $RegionLevel.wrap(_level);

      case 'isoStatus':
        final _isoStatus = $value.isoStatus;
        return _isoStatus == null
            ? const $null()
            : $RegionIsoStatus.wrap(_isoStatus);

      case 'driveSide':
        final _driveSide = $value.driveSide;
        return _driveSide == null
            ? const $null()
            : $RegionDrivingSide.wrap(_driveSide);

      case 'roadSpeedUnit':
        final _roadSpeedUnit = $value.roadSpeedUnit;
        return _roadSpeedUnit == null
            ? const $null()
            : $RegionSpeedUnit.wrap(_roadSpeedUnit);

      case 'roadHeightUnit':
        final _roadHeightUnit = $value.roadHeightUnit;
        return _roadHeightUnit == null
            ? const $null()
            : $RegionHeightUnit.wrap(_roadHeightUnit);

      case 'callingCodes':
        final _callingCodes = $value.callingCodes;
        return $List.view(_callingCodes, (e) => $String(e));

      case 'hasGeometry':
        final _hasGeometry = $value.hasGeometry;
        return $bool(_hasGeometry);
      case 'getFeatureIDs':
        return __getFeatureIDs;

      case 'hasProperty':
        return __hasProperty;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __getFeatureIDs = $Function(_getFeatureIDs);
  static $Value? _getFeatureIDs(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $RegionFeature;
    final result = self.$value.getFeatureIDs();
    return $List.view(result, (e) => $String(e));
  }

  static const $Function __hasProperty = $Function(_hasProperty);
  static $Value? _hasProperty(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $RegionFeature;
    final result = self.$value.hasProperty(args[0]!.$value);
    return $bool(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'm49':
        $value.m49 = value.$value;
        return;

      case 'emojiFlag':
        $value.emojiFlag = value.$value;
        return;

      case 'ccTLD':
        $value.ccTLD = value.$value;
        return;

      case 'aliases':
        $value.aliases = value.$value;
        return;

      case 'groups':
        $value.groups = value.$value;
        return;

      case 'members':
        $value.members = value.$value;
        return;

      case 'level':
        $value.level = value.$value;
        return;

      case 'isoStatus':
        $value.isoStatus = value.$value;
        return;

      case 'driveSide':
        $value.driveSide = value.$value;
        return;

      case 'roadSpeedUnit':
        $value.roadSpeedUnit = value.$value;
        return;

      case 'roadHeightUnit':
        $value.roadHeightUnit = value.$value;
        return;

      case 'callingCodes':
        $value.callingCodes = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
