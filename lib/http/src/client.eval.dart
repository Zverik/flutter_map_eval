import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:http/http.dart';

import 'base_request.eval.dart';
import 'response.eval.dart';
import 'streamed_response.eval.dart';

/// dart_eval wrapper binding for [Client]
class $Client implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:http/src/client.dart',
      'Client.',
      $Client.$new,
    );
  }

  /// Compile-time type specification of [$Client]
  static const $spec = BridgeTypeSpec('package:http/src/client.dart', 'Client');

  /// Compile-time type declaration of [$Client]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Client]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type)),
        isFactory: true,
      ),
    },

    methods: {
      'head': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($Response.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'get': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($Response.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'post': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($Response.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'body',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'encoding',
              BridgeTypeAnnotation(
                BridgeTypeRef(ConvertTypes.encoding, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'put': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($Response.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'body',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'encoding',
              BridgeTypeAnnotation(
                BridgeTypeRef(ConvertTypes.encoding, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'patch': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($Response.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'body',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'encoding',
              BridgeTypeAnnotation(
                BridgeTypeRef(ConvertTypes.encoding, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'delete': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($Response.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'body',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'encoding',
              BridgeTypeAnnotation(
                BridgeTypeRef(ConvertTypes.encoding, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'read': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'readBytes': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(TypedDataTypes.uint8List, [])),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'headers',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'url',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
              false,
            ),
          ],
        ),
      ),

      'send': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($StreamedResponse.$type),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'request',
              BridgeTypeAnnotation($BaseRequest.$type),
              false,
            ),
          ],
        ),
      ),

      'close': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Client.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Client.wrap(Client());
  }

  final $Instance _superclass;

  @override
  final Client $value;

  @override
  Client get $reified => $value;

  /// Wrap a [Client] in a [$Client]
  $Client.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'head':
        return __head;

      case 'get':
        return __get;

      case 'post':
        return __post;

      case 'put':
        return __put;

      case 'patch':
        return __patch;

      case 'delete':
        return __delete;

      case 'read':
        return __read;

      case 'readBytes':
        return __readBytes;

      case 'send':
        return __send;

      case 'close':
        return __close;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __head = $Function(_head);
  static $Value? _head(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.head(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }

  static const $Function __get = $Function(_get);
  static $Value? _get(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.get(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }

  static const $Function __post = $Function(_post);
  static $Value? _post(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.post(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }

  static const $Function __put = $Function(_put);
  static $Value? _put(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.put(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }

  static const $Function __patch = $Function(_patch);
  static $Value? _patch(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.patch(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }

  static const $Function __delete = $Function(_delete);
  static $Value? _delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.delete(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }

  static const $Function __read = $Function(_read);
  static $Value? _read(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.read(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $String(e)));
  }

  static const $Function __readBytes = $Function(_readBytes);
  static $Value? _readBytes(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Client;
    final url = args[0]!.$value as Uri;
    runtime.assertPermission('network', url.toString());
    final result = self.$value.readBytes(
      url,
      headers: (args[1]?.$reified as Map?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $Uint8List.wrap(e)));
  }

  static const $Function __send = $Function(_send);
  static $Value? _send(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    final result = self.$value.send(args[0]!.$value);
    return $Future.wrap(result.then((e) => $StreamedResponse.wrap(e)));
  }

  static const $Function __close = $Function(_close);
  static $Value? _close(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Client;
    self.$value.close();
    return null;
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
