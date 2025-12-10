import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:http/http.dart';

import 'base_request.eval.dart';
import 'base_response.eval.dart';
import 'streamed_response.eval.dart';

/// dart_eval wrapper binding for [Response]
class $Response implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:http/src/response.dart',
      'Response.',
      $Response.$new,
    );

    runtime.registerBridgeFunc(
      'package:http/src/response.dart',
      'Response.bytes',
      $Response.$bytes,
    );

    runtime.registerBridgeFunc(
      'package:http/src/response.dart',
      'Response.fromStream',
      $Response.$fromStream,
    );
  }

  /// Compile-time type specification of [$Response]
  static const $spec = BridgeTypeSpec(
    'package:http/src/response.dart',
    'Response',
  );

  /// Compile-time type declaration of [$Response]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Response]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec('package:http/src/base_response.dart', 'BaseResponse'),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
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
              'body',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
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

      'bytes': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
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
              'bodyBytes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
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

    methods: {
      'fromStream': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [BridgeTypeAnnotation($type)]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'response',
              BridgeTypeAnnotation($StreamedResponse.$type),
              false,
            ),
          ],
        ),
        isStatic: true,
      ),
    },
    getters: {
      'body': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {
      'bodyBytes': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Response.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Response.wrap(
      Response(
        args[0]!.$value,
        args[1]!.$value,
        request: args[2]?.$value,
        headers: (args[3]?.$reified ?? const {} as Map?)?.cast(),
        isRedirect: args[4]?.$value ?? false,
        persistentConnection: args[5]?.$value ?? true,
        reasonPhrase: args[6]?.$value,
      ),
    );
  }

  /// Wrapper for the [Response.bytes] constructor
  static $Value? $bytes(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $Response.wrap(
      Response.bytes(
        (args[0]!.$reified as List).cast(),
        args[1]!.$value,
        request: args[2]?.$value,
        headers: (args[3]?.$reified ?? const {} as Map?)?.cast(),
        isRedirect: args[4]?.$value ?? false,
        persistentConnection: args[5]?.$value ?? true,
        reasonPhrase: args[6]?.$value,
      ),
    );
  }

  /// Wrapper for the [Response.fromStream] method
  static $Value? $fromStream(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = Response.fromStream(args[0]!.$value);
    return $Future.wrap(value.then((e) => $Response.wrap(e)));
  }

  final $Instance _superclass;

  @override
  final Response $value;

  @override
  Response get $reified => $value;

  /// Wrap a [Response] in a [$Response]
  $Response.wrap(this.$value) : _superclass = $BaseResponse.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'bodyBytes':
        return $Uint8List.wrap($value.bodyBytes);

      case 'body':
        return $String($value.body);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
