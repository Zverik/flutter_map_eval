import 'package:country_coder/country_coder.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [LocationSet]
class $LocationSet implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:country_coder/src/location_set.dart',
      'LocationSet.',
      $LocationSet.$new,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/location_set.dart',
      'LocationSet.fromJson',
      $LocationSet.$fromJson,
    );
  }

  /// Compile-time type specification of [$LocationSet]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/location_set.dart',
    'LocationSet',
  );

  /// Compile-time type declaration of [$LocationSet]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LocationSet]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'include',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'exclude',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'includeCircular',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:country_coder/src/location_set.dart',
                        'LocationSetRadius',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'excludeCircular',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:country_coder/src/location_set.dart',
                        'LocationSetRadius',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
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
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'toJson': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {
      'isEmpty': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {
      'include': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'exclude': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'includeCircular': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:country_coder/src/location_set.dart',
                  'LocationSetRadius',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'excludeCircular': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:country_coder/src/location_set.dart',
                  'LocationSetRadius',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LocationSet.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LocationSet.wrap(
      LocationSet(
        include: (args[0]?.$reified ?? const [] as List?)?.cast(),
        exclude: (args[1]?.$reified ?? const [] as List?)?.cast(),
        includeCircular: (args[2]?.$reified ?? const [] as List?)?.cast(),
        excludeCircular: (args[3]?.$reified ?? const [] as List?)?.cast(),
      ),
    );
  }

  /// Wrapper for the [LocationSet.fromJson] constructor
  static $Value? $fromJson(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LocationSet.wrap(
      LocationSet.fromJson((args[0]!.$reified as Map).cast()),
    );
  }

  final $Instance _superclass;

  @override
  final LocationSet $value;

  @override
  LocationSet get $reified => $value;

  /// Wrap a [LocationSet] in a [$LocationSet]
  $LocationSet.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'include':
        return $List.view($value.include, (e) => $String(e));

      case 'exclude':
        return $List.view($value.exclude, (e) => $String(e));

      case 'includeCircular':
        return $List.view(
          $value.includeCircular,
          (e) => $LocationSetRadius.wrap(e),
        );

      case 'excludeCircular':
        return $List.view(
          $value.excludeCircular,
          (e) => $LocationSetRadius.wrap(e),
        );

      case 'isEmpty':
        return $bool($value.isEmpty);

      case 'toJson':
        return __toJson;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __toJson = $Function(_toJson);
  static $Value? _toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $LocationSet;
    final result = self.$value.toJson();
    return $Map.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [LocationSetRadius]
class $LocationSetRadius implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:country_coder/src/location_set.dart',
      'LocationSetRadius.',
      $LocationSetRadius.$new,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/location_set.dart',
      'LocationSetRadius.fromJson',
      $LocationSetRadius.$fromJson,
    );

    runtime.registerBridgeFunc(
      'package:country_coder/src/location_set.dart',
      'LocationSetRadius.kDefaultRadius*g',
      $LocationSetRadius.$kDefaultRadius,
    );
  }

  /// Compile-time type specification of [$LocationSetRadius]
  static const $spec = BridgeTypeSpec(
    'package:country_coder/src/location_set.dart',
    'LocationSetRadius',
  );

  /// Compile-time type declaration of [$LocationSetRadius]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LocationSetRadius]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'longitude',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'latitude',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
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
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'toJson': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'contains': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter(
              'lon',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'lat',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'longitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'latitude': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'radius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'kDefaultRadius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LocationSetRadius.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LocationSetRadius.wrap(
      LocationSetRadius(
        args[0]!.$value,
        args[1]!.$value,
        args[2]?.$value ?? 25.0,
      ),
    );
  }

  /// Wrapper for the [LocationSetRadius.fromJson] constructor
  static $Value? $fromJson(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LocationSetRadius.wrap(
      LocationSetRadius.fromJson((args[0]!.$reified as List).cast()),
    );
  }

  /// Wrapper for the [LocationSetRadius.kDefaultRadius] getter
  static $Value? $kDefaultRadius(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = LocationSetRadius.kDefaultRadius;
    return $double(value);
  }

  final $Instance _superclass;

  @override
  final LocationSetRadius $value;

  @override
  LocationSetRadius get $reified => $value;

  /// Wrap a [LocationSetRadius] in a [$LocationSetRadius]
  $LocationSetRadius.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'longitude':
        return $double($value.longitude);

      case 'latitude':
        return $double($value.latitude);

      case 'radius':
        return $double($value.radius);
      case 'toJson':
        return __toJson;

      case 'contains':
        return __contains;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __toJson = $Function(_toJson);
  static $Value? _toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $LocationSetRadius;
    final result = self.$value.toJson();
    return $List.view(result, (e) => $double(e));
  }

  static const $Function __contains = $Function(_contains);
  static $Value? _contains(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $LocationSetRadius;
    final result = self.$value.contains(args[0]!.$value, args[1]!.$value);
    return $bool(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
