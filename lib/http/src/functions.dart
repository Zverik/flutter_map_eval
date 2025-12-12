import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:http/http.dart';

import 'response.eval.dart';

void configureFunctionsForCompile(BridgeDeclarationRegistry registry) {
  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'head',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'get',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'post',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'put',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'patch',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'delete',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'read',
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
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      'package:http/http.dart',
      'readBytes',
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
  );
}

void configureFunctionsForRuntime(Runtime runtime) {
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'head',
    const _$head().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'get',
    const _$get().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'post',
    const _$post().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'put',
    const _$put().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'patch',
    const _$patch().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'delete',
    const _$delete().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'read',
    const _$read().call,
  );
  runtime.registerBridgeFunc(
    'package:http/http.dart',
    'readBytes',
    const _$readBytes().call,
  );
}

class _$head implements EvalCallable {
  const _$head();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = head(url, headers: headers?.cast());
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }
}

class _$get implements EvalCallable {
  const _$get();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = get(url, headers: headers?.cast());
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }
}

class _$post implements EvalCallable {
  const _$post();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = post(
      url,
      headers: headers?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }
}

class _$put implements EvalCallable {
  const _$put();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = put(
      url,
      headers: headers?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }
}

class _$patch implements EvalCallable {
  const _$patch();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    final headers = args[1]?.$reified as Map?;
    final result = patch(
      url,
      headers: headers?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }
}

class _$delete implements EvalCallable {
  const _$delete();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = delete(
      url,
      headers: headers?.cast(),
      body: args[2]?.$value,
      encoding: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $Response.wrap(e)));
  }
}

class _$read implements EvalCallable {
  const _$read();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = read(url, headers: headers?.cast());
    return $Future.wrap(result.then((e) => $String(e)));
  }
}

class _$readBytes implements EvalCallable {
  const _$readBytes();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = (args[0] as $Uri).$value;
    runtime.assertPermission('network', url.toString());
    final headers = args[1]?.$reified as Map?;
    final result = readBytes(url, headers: headers?.cast());
    return $Future.wrap(result.then((e) => $Uint8List.wrap(e)));
  }
}
