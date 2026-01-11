import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter_map_geojson2/flutter_map_geojson2.dart';

/// dart_eval wrapper binding for [NotAGeoJson]
class $NotAGeoJson implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
      'NotAGeoJson.',
      $NotAGeoJson.$new,
    );
  }

  /// Compile-time type specification of [$NotAGeoJson]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
    'NotAGeoJson',
  );

  /// Compile-time type declaration of [$NotAGeoJson]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$NotAGeoJson]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $implements: [BridgeTypeRef(CoreTypes.exception, [])],
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [NotAGeoJson.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $NotAGeoJson.wrap(NotAGeoJson());
  }

  final $Instance _superclass;

  @override
  final NotAGeoJson $value;

  @override
  NotAGeoJson get $reified => $value;

  /// Wrap a [NotAGeoJson] in a [$NotAGeoJson]
  $NotAGeoJson.wrap(this.$value) : _superclass = $Object($value);

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

/// dart_eval wrapper binding for [GeoJsonLoadException]
class $GeoJsonLoadException implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
      'GeoJsonLoadException.',
      $GeoJsonLoadException.$new,
    );
  }

  /// Compile-time type specification of [$GeoJsonLoadException]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
    'GeoJsonLoadException',
  );

  /// Compile-time type declaration of [$GeoJsonLoadException]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$GeoJsonLoadException]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $implements: [BridgeTypeRef(CoreTypes.exception, [])],
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'message': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [GeoJsonLoadException.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $GeoJsonLoadException.wrap(GeoJsonLoadException(args[0]!.$value));
  }

  final $Instance _superclass;

  @override
  final GeoJsonLoadException $value;

  @override
  GeoJsonLoadException get $reified => $value;

  /// Wrap a [GeoJsonLoadException] in a [$GeoJsonLoadException]
  $GeoJsonLoadException.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'message':
        return $String($value.message);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [GeoJsonProvider]
class $GeoJsonProvider implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$GeoJsonProvider]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
    'GeoJsonProvider',
  );

  /// Compile-time type declaration of [$GeoJsonProvider]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$GeoJsonProvider]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final GeoJsonProvider $value;

  @override
  GeoJsonProvider get $reified => $value;

  /// Wrap a [GeoJsonProvider] in a [$GeoJsonProvider]
  $GeoJsonProvider.wrap(this.$value) : _superclass = $Object($value);

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

/// dart_eval wrapper binding for [MemoryGeoJson]
class $MemoryGeoJson implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
      'MemoryGeoJson.',
      $MemoryGeoJson.$new,
    );
  }

  /// Compile-time type specification of [$MemoryGeoJson]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
    'MemoryGeoJson',
  );

  /// Compile-time type declaration of [$MemoryGeoJson]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$MemoryGeoJson]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
          'GeoJsonProvider',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
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

    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [MemoryGeoJson.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MemoryGeoJson.wrap(
      MemoryGeoJson((args[0]!.$reified as Map).cast()),
    );
  }

  final $Instance _superclass;

  @override
  final MemoryGeoJson $value;

  @override
  MemoryGeoJson get $reified => $value;

  /// Wrap a [MemoryGeoJson] in a [$MemoryGeoJson]
  $MemoryGeoJson.wrap(this.$value)
    : _superclass = $GeoJsonProvider.wrap($value);

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

/// dart_eval wrapper binding for [FileGeoJson]
class $FileGeoJson implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
      'FileGeoJson.',
      $FileGeoJson.$new,
    );
  }

  /// Compile-time type specification of [$FileGeoJson]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
    'FileGeoJson',
  );

  /// Compile-time type declaration of [$FileGeoJson]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FileGeoJson]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
          'GeoJsonProvider',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'file',
              BridgeTypeAnnotation(BridgeTypeRef(IoTypes.file, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FileGeoJson.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FileGeoJson.wrap(FileGeoJson(args[0]!.$value));
  }

  final $Instance _superclass;

  @override
  final FileGeoJson $value;

  @override
  FileGeoJson get $reified => $value;

  /// Wrap a [FileGeoJson] in a [$FileGeoJson]
  $FileGeoJson.wrap(this.$value) : _superclass = $GeoJsonProvider.wrap($value);

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

/// dart_eval wrapper binding for [NetworkGeoJson]
class $NetworkGeoJson implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
      'NetworkGeoJson.',
      $NetworkGeoJson.$new,
    );
  }

  /// Compile-time type specification of [$NetworkGeoJson]
  static const $spec = BridgeTypeSpec(
    'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
    'NetworkGeoJson',
  );

  /// Compile-time type declaration of [$NetworkGeoJson]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$NetworkGeoJson]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_map_geojson2/geojson2/geojson_provider.dart',
          'GeoJsonProvider',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [NetworkGeoJson.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $NetworkGeoJson.wrap(
      NetworkGeoJson(
        args[0]!.$value,
        headers: (args[1]?.$reified ?? const {} as Map?)?.cast(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final NetworkGeoJson $value;

  @override
  NetworkGeoJson get $reified => $value;

  /// Wrap a [NetworkGeoJson] in a [$NetworkGeoJson]
  $NetworkGeoJson.wrap(this.$value)
    : _superclass = $GeoJsonProvider.wrap($value);

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
