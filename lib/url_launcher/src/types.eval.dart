import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:url_launcher/url_launcher.dart';

const _package = 'package:url_launcher/url_launcher.dart';

/// dart_eval enum wrapper binding for [LaunchMode]
class $LaunchMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      _package,
      'LaunchMode',
      $LaunchMode._$values,
    );

    runtime.registerBridgeFunc(
      _package,
      'LaunchMode.values*g',
      $LaunchMode.$values,
    );
  }

  /// Compile-time type specification of [$LaunchMode]
  static const $spec = BridgeTypeSpec(
    _package,
    'LaunchMode',
  );

  /// Compile-time type declaration of [$LaunchMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LaunchMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: [
      'platformDefault',
      'inAppWebView',
      'inAppBrowserView',
      'externalApplication',
      'externalNonBrowserApplication',
    ],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'platformDefault': $LaunchMode.wrap(LaunchMode.platformDefault),
    'inAppWebView': $LaunchMode.wrap(LaunchMode.inAppWebView),
    'inAppBrowserView': $LaunchMode.wrap(LaunchMode.inAppBrowserView),
    'externalApplication': $LaunchMode.wrap(LaunchMode.externalApplication),
    'externalNonBrowserApplication': $LaunchMode.wrap(
      LaunchMode.externalNonBrowserApplication,
    ),
  };

  /// Wrapper for the [LaunchMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LaunchMode.values;
    return $List.view(value, (e) => $LaunchMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final LaunchMode $value;

  @override
  LaunchMode get $reified => $value;

  /// Wrap a [LaunchMode] in a [$LaunchMode]
  $LaunchMode.wrap(this.$value) : _superclass = $Object($value);

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

/// dart_eval wrapper binding for [WebViewConfiguration]
class $WebViewConfiguration implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      _package,
      'WebViewConfiguration.',
      $WebViewConfiguration.$new,
    );
  }

  /// Compile-time type specification of [$WebViewConfiguration]
  static const $spec = BridgeTypeSpec(
    _package,
    'WebViewConfiguration',
  );

  /// Compile-time type declaration of [$WebViewConfiguration]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$WebViewConfiguration]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'enableJavaScript',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'enableDomStorage',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

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
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'enableJavaScript': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'enableDomStorage': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'headers': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.map, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [WebViewConfiguration.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $WebViewConfiguration.wrap(
      WebViewConfiguration(
        enableJavaScript: args[0]?.$value ?? true,
        enableDomStorage: args[1]?.$value ?? true,
        headers: (args[2]?.$reified ?? const <String, String>{} as Map?)
            ?.cast(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final WebViewConfiguration $value;

  @override
  WebViewConfiguration get $reified => $value;

  /// Wrap a [WebViewConfiguration] in a [$WebViewConfiguration]
  $WebViewConfiguration.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'enableJavaScript':
        return $bool($value.enableJavaScript);

      case 'enableDomStorage':
        return $bool($value.enableDomStorage);

      case 'headers':
        return $Map.wrap($value.headers);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [BrowserConfiguration]
class $BrowserConfiguration implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      _package,
      'BrowserConfiguration.',
      $BrowserConfiguration.$new,
    );
  }

  /// Compile-time type specification of [$BrowserConfiguration]
  static const $spec = BridgeTypeSpec(
    _package,
    'BrowserConfiguration',
  );

  /// Compile-time type declaration of [$BrowserConfiguration]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$BrowserConfiguration]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'showTitle',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'showTitle': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [BrowserConfiguration.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $BrowserConfiguration.wrap(
      BrowserConfiguration(showTitle: args[0]?.$value ?? false),
    );
  }

  final $Instance _superclass;

  @override
  final BrowserConfiguration $value;

  @override
  BrowserConfiguration get $reified => $value;

  /// Wrap a [BrowserConfiguration] in a [$BrowserConfiguration]
  $BrowserConfiguration.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'showTitle':
        return $bool($value.showTitle);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
