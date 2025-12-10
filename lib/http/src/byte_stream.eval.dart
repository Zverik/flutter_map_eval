import 'dart:convert' show utf8;

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:http/http.dart';

/// dart_eval wrapper binding for [ByteStream]
class $ByteStream implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:http/src/byte_stream.dart',
      'ByteStream.',
      $ByteStream.$new,
    );

    runtime.registerBridgeFunc(
      'package:http/src/byte_stream.dart',
      'ByteStream.fromBytes',
      $ByteStream.$fromBytes,
    );
  }

  /// Compile-time type specification of [$ByteStream]
  static const $spec = BridgeTypeSpec(
    'package:http/src/byte_stream.dart',
    'ByteStream',
  );

  /// Compile-time type declaration of [$ByteStream]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ByteStream]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(AsyncTypes.streamView, [
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
          ]),
        ),
      ]),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
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
          ],
        ),
        isFactory: false,
      ),

      'fromBytes': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'bytes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                ]),
              ),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'toBytes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List, [])),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'bytesToString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'encoding',
              BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, [])),
              true,
            ),
          ],
        ),
      ),

      'toStringStream': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.stream, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'encoding',
              BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, [])),
              true,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [ByteStream.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $ByteStream.wrap(ByteStream(args[0]!.$value));
  }

  /// Wrapper for the [ByteStream.fromBytes] constructor
  static $Value? $fromBytes(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $ByteStream.wrap(
      ByteStream.fromBytes((args[0]!.$reified as List).cast()),
    );
  }

  final $Instance _superclass;

  @override
  final ByteStream $value;

  @override
  ByteStream get $reified => $value;

  /// Wrap a [ByteStream] in a [$ByteStream]
  $ByteStream.wrap(this.$value) : _superclass = $StreamView.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'toBytes':
        return __toBytes;

      case 'bytesToString':
        return __bytesToString;

      case 'toStringStream':
        return __toStringStream;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __toBytes = $Function(_toBytes);
  static $Value? _toBytes(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $ByteStream;
    final result = self.$value.toBytes();
    return $Future.wrap(result.then((e) => $Uint8List.wrap(e)));
  }

  static const $Function __bytesToString = $Function(_bytesToString);
  static $Value? _bytesToString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $ByteStream;
    final result = self.$value.bytesToString(args[0]?.$value ?? utf8);
    return $Future.wrap(result.then((e) => $String(e)));
  }

  static const $Function __toStringStream = $Function(_toStringStream);
  static $Value? _toStringStream(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $ByteStream;
    final result = self.$value.toStringStream(args[0]?.$value ?? utf8);
    return $Stream.wrap(result.map((e) => $String(e)));
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
