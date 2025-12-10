import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:http/http.dart';

import 'base_request.eval.dart';

/// dart_eval wrapper binding for [BaseResponse]
class $BaseResponse implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$BaseResponse]
  static const $spec = BridgeTypeSpec(
    'package:http/src/base_response.dart',
    'BaseResponse',
  );

  /// Compile-time type declaration of [$BaseResponse]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$BaseResponse]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
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
      'request': BridgeFieldDef(
        BridgeTypeAnnotation($BaseRequest.$type, nullable: true),
        isStatic: false,
      ),

      'statusCode': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'reasonPhrase': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'contentLength': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
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

      'isRedirect': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'persistentConnection': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final BaseResponse $value;

  @override
  BaseResponse get $reified => $value;

  /// Wrap a [BaseResponse] in a [$BaseResponse]
  $BaseResponse.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'request':
        final _request = $value.request;
        return _request == null ? const $null() : $BaseRequest.wrap(_request);

      case 'statusCode':
        return $int($value.statusCode);

      case 'reasonPhrase':
        final _reasonPhrase = $value.reasonPhrase;
        return _reasonPhrase == null ? const $null() : $String(_reasonPhrase);

      case 'contentLength':
        final _contentLength = $value.contentLength;
        return _contentLength == null ? const $null() : $int(_contentLength);

      case 'headers':
        return $Map.wrap($value.headers);

      case 'isRedirect':
        return $bool($value.isRedirect);

      case 'persistentConnection':
        return $bool($value.persistentConnection);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
