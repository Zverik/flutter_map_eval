import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:http/http.dart';

import 'byte_stream.eval.dart';
import 'streamed_response.eval.dart';

/// dart_eval wrapper binding for [BaseRequest]
class $BaseRequest implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$BaseRequest]
  static const $spec = BridgeTypeSpec(
    'package:http/src/base_request.dart',
    'BaseRequest',
  );

  /// Compile-time type declaration of [$BaseRequest]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$BaseRequest]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'method',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'finalize': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec('package:http/src/byte_stream.dart', 'ByteStream'),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'send': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:http/src/streamed_response.dart',
                    'StreamedResponse',
                  ),
                  [],
                ),
              ),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {
      'contentLength': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.int, []),
            nullable: true,
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'persistentConnection': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'followRedirects': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'maxRedirects': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'finalized': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {
      'contentLength': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'persistentConnection': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),
          ],
        ),
      ),

      'followRedirects': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),
          ],
        ),
      ),

      'maxRedirects': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
      ),
    },
    fields: {
      'method': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'url': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
        isStatic: false,
      ),

      '_contentLength': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      '_persistentConnection': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      '_followRedirects': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      '_maxRedirects': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
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

      '_finalized': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      '_tokenRE': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.regExp, [])),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final BaseRequest $value;

  @override
  BaseRequest get $reified => $value;

  /// Wrap a [BaseRequest] in a [$BaseRequest]
  $BaseRequest.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'method':
        return $String($value.method);

      case 'url':
        return $Uri.wrap($value.url);

      case 'headers':
        return $Map.wrap($value.headers);

      case 'contentLength':
        final _contentLength = $value.contentLength;
        return _contentLength == null ? const $null() : $int(_contentLength);

      case 'persistentConnection':
        return $bool($value.persistentConnection);

      case 'followRedirects':
        return $bool($value.followRedirects);

      case 'maxRedirects':
        return $int($value.maxRedirects);

      case 'finalized':
        return $bool($value.finalized);
      case 'finalize':
        return __finalize;

      case 'send':
        return __send;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __finalize = $Function(_finalize);
  static $Value? _finalize(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $BaseRequest;
    final result = self.$value.finalize();
    return $ByteStream.wrap(result);
  }

  static const $Function __send = $Function(_send);
  static $Value? _send(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $BaseRequest;
    final result = self.$value.send();
    return $Future.wrap(result.then((e) => $StreamedResponse.wrap(e)));
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'contentLength':
        $value.contentLength = value.$value;
        return;

      case 'persistentConnection':
        $value.persistentConnection = value.$value;
        return;

      case 'followRedirects':
        $value.followRedirects = value.$value;
        return;

      case 'maxRedirects':
        $value.maxRedirects = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
