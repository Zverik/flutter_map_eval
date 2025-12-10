import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/convert.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:http/http.dart';

import 'base_request.eval.dart';
import 'byte_stream.eval.dart';

/// dart_eval wrapper binding for [Request]
class $Request implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:http/src/request.dart',
      'Request.',
      $Request.$new,
    );
  }

  /// Compile-time type specification of [$Request]
  static const $spec = BridgeTypeSpec(
    'package:http/src/request.dart',
    'Request',
  );

  /// Compile-time type declaration of [$Request]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Request]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec('package:http/src/base_request.dart', 'BaseRequest'),
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
          returns: BridgeTypeAnnotation($ByteStream.$type),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {
      'contentLength': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'encoding': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(ConvertTypes.encoding, []),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'bodyBytes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(TypedDataTypes.uint8List, []),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'body': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'bodyFields': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
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

      'encoding': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, [])),
              false,
            ),
          ],
        ),
      ),

      'bodyBytes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'body': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'bodyFields': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'fields',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Request.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    final url = args[1]!.$value;
    runtime.assertPermission('network', url.toString());
    return $Request.wrap(Request(args[0]!.$value, args[1]!.$value));
  }

  final $Instance _superclass;

  @override
  final Request $value;

  @override
  Request get $reified => $value;

  /// Wrap a [Request] in a [$Request]
  $Request.wrap(this.$value) : _superclass = $BaseRequest.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $int($value.contentLength);

      case 'encoding':
        return $Encoding.wrap($value.encoding);

      case 'bodyBytes':
        return $Uint8List.wrap($value.bodyBytes);

      case 'body':
        return $String($value.body);

      case 'bodyFields':
        return $Map.wrap($value.bodyFields);
      case 'finalize':
        return __finalize;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __finalize = $Function(_finalize);
  static $Value? _finalize(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Request;
    final result = self.$value.finalize();
    return $ByteStream.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'contentLength':
        $value.contentLength = value.$value;
        return;

      case 'encoding':
        $value.encoding = value.$value;
        return;

      case 'bodyBytes':
        $value.bodyBytes = value.$value;
        return;

      case 'body':
        $value.body = value.$value;
        return;

      case 'bodyFields':
        $value.bodyFields = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
