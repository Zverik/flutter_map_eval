import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:http/http.dart';

import 'base_request.eval.dart';
import 'base_response.eval.dart';
import 'byte_stream.eval.dart';

/// dart_eval wrapper binding for [StreamedResponse]
class $StreamedResponse implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:http/src/streamed_response.dart',
      'StreamedResponse.',
      $StreamedResponse.$new,
    );
  }

  /// Compile-time type specification of [$StreamedResponse]
  static const $spec = BridgeTypeSpec(
    'package:http/src/streamed_response.dart',
    'StreamedResponse',
  );

  /// Compile-time type declaration of [$StreamedResponse]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$StreamedResponse]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $BaseRequest.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'contentLength',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'request',
              BridgeTypeAnnotation($BaseRequest.$type, nullable: true),
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

            BridgeParameter(
              'isRedirect',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'persistentConnection',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'reasonPhrase',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'stream',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stream, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                    ]),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'statusCode',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
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
      'stream': BridgeFieldDef(
        BridgeTypeAnnotation($ByteStream.$type),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [StreamedResponse.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $StreamedResponse.wrap(
      StreamedResponse(
        args[0]!.$value,
        args[1]!.$value,
        contentLength: args[2]?.$value,
        request: args[3]?.$value,
        headers: (args[4]?.$reified ?? const {} as Map?)?.cast(),
        isRedirect: args[5]?.$value ?? false,
        persistentConnection: args[6]?.$value ?? true,
        reasonPhrase: args[7]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final StreamedResponse $value;

  @override
  StreamedResponse get $reified => $value;

  /// Wrap a [StreamedResponse] in a [$StreamedResponse]
  $StreamedResponse.wrap(this.$value)
    : _superclass = $BaseResponse.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'stream':
        return $ByteStream.wrap($value.stream);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
