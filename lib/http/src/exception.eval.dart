import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:http/http.dart';

/// dart_eval wrapper binding for [ClientException]
class $ClientException implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:http/src/exception.dart',
      'ClientException.',
      $ClientException.$new,
    );
  }

  /// Compile-time type specification of [$ClientException]
  static const $spec = BridgeTypeSpec(
    'package:http/src/exception.dart',
    'ClientException',
  );

  /// Compile-time type declaration of [$ClientException]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ClientException]
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

            BridgeParameter(
              'uri',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.uri, []),
                nullable: true,
              ),
              true,
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

      'uri': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []), nullable: true),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [ClientException.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $ClientException.wrap(
      ClientException(args[0]!.$value, args[1]?.$value),
    );
  }

  final $Instance _superclass;

  @override
  final ClientException $value;

  @override
  ClientException get $reified => $value;

  /// Wrap a [ClientException] in a [$ClientException]
  $ClientException.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'message':
        return $String($value.message);

      case 'uri':
        final _uri = $value.uri;
        return _uri == null ? const $null() : $Uri.wrap(_uri);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
