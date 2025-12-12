import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:sqflite/sqflite.dart';

import 'sqflite_api.dart';

void configureFunctionsForCompile(BridgeDeclarationRegistry registry) {
  const package = 'package:sqflite/sqflite.dart';

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      package,
      'openDatabase',
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.future, [
            BridgeTypeAnnotation($Database.$type),
          ]),
        ),
        params: [
          BridgeParameter(
            'path',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            false,
          ),
        ],
        namedParams: [
          BridgeParameter(
            'version',
            BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.int, []),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'onConfigure',
            BridgeTypeAnnotation(
              BridgeTypeRef.genericFunction(
                BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                      'db',
                      BridgeTypeAnnotation($Database.$type),
                      false,
                    ),
                  ],
                ),
              ),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'onCreate',
            BridgeTypeAnnotation(
              BridgeTypeRef.genericFunction(
                BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                      'db',
                      BridgeTypeAnnotation($Database.$type),
                      false,
                    ),

                    BridgeParameter(
                      'version',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                      false,
                    ),
                  ],
                ),
              ),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'onUpgrade',
            BridgeTypeAnnotation(
              BridgeTypeRef.genericFunction(
                BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                      'db',
                      BridgeTypeAnnotation($Database.$type),
                      false,
                    ),

                    BridgeParameter(
                      'oldVersion',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                      false,
                    ),

                    BridgeParameter(
                      'newVersion',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                      false,
                    ),
                  ],
                  namedParams: [],
                ),
              ),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'onDowngrade',
            BridgeTypeAnnotation(
              BridgeTypeRef.genericFunction(
                BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                      'db',
                      BridgeTypeAnnotation($Database.$type),
                      false,
                    ),

                    BridgeParameter(
                      'oldVersion',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                      false,
                    ),

                    BridgeParameter(
                      'newVersion',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
                      false,
                    ),
                  ],
                  namedParams: [],
                ),
              ),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'onOpen',
            BridgeTypeAnnotation(
              BridgeTypeRef.genericFunction(
                BridgeFunctionDef(
                  returns: BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.future, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
                    ]),
                  ),
                  params: [
                    BridgeParameter(
                      'db',
                      BridgeTypeAnnotation($Database.$type),
                      false,
                    ),
                  ],
                  namedParams: [],
                ),
              ),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'readOnly',
            BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.bool, []),
              nullable: true,
            ),
            true,
          ),

          BridgeParameter(
            'singleInstance',
            BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.bool, []),
              nullable: true,
            ),
            true,
          ),
        ],
      ),
    ),
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      package,
      'openReadOnlyDatabase',
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.future, [
            BridgeTypeAnnotation($Database.$type),
          ]),
        ),
        params: [
          BridgeParameter(
            'path',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            false,
          ),
        ],
        namedParams: [
          BridgeParameter(
            'singleInstance',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
            true,
          ),
        ],
      ),
    ),
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      package,
      'getDatabasesPath',
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.future, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        namedParams: [],
        params: [],
      ),
    ),
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      package,
      'deleteDatabase',
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.future, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          ]),
        ),
        namedParams: [],
        params: [
          BridgeParameter(
            'path',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            false,
          ),
        ],
      ),
    ),
  );

  registry.defineBridgeTopLevelFunction(
    BridgeFunctionDeclaration(
      package,
      'databaseExists',
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.future, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          ]),
        ),
        namedParams: [],
        params: [
          BridgeParameter(
            'path',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            false,
          ),
        ],
      ),
    ),
  );
}

void configureFunctionsForRuntime(Runtime runtime) {
  const package = 'package:sqflite/sqflite.dart';

  runtime.registerBridgeFunc(
    package,
    'openDatabase',
    const _$openDatabase().call,
  );

  runtime.registerBridgeFunc(
    package,
    'openReadOnlyDatabase',
    const _$openReadOnlyDatabase().call,
  );

  runtime.registerBridgeFunc(
    package,
    'deleteDatabase',
    const _$deleteDatabase().call,
  );

  runtime.registerBridgeFunc(
    package,
    'databaseExists',
    const _$databaseExists().call,
  );

  runtime.registerBridgeFunc(
    package,
    'getDatabasesPath',
    const _$getDatabasesPath().call,
  );
}

class _$openDatabase implements EvalCallable {
  const _$openDatabase();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final String path = args[0]!.$value;
    if (path != ':memory:') {
      runtime.assertPermission('filesystem:write', path);
    }
    final result = openDatabase(
      path,
      version: args[1]?.$value,
      onConfigure: (Database db) {
        return (args[2]! as EvalCallable?)?.call(runtime, null, [
          $Database.wrap(db),
        ])?.$value;
      },
      onCreate: (Database db, int version) {
        return (args[3]! as EvalCallable?)?.call(runtime, null, [
          $Database.wrap(db),
          $int(version),
        ])?.$value;
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) {
        return (args[4]! as EvalCallable?)?.call(runtime, null, [
          $Database.wrap(db),
          $int(oldVersion),
          $int(newVersion),
        ])?.$value;
      },
      onDowngrade: (Database db, int oldVersion, int newVersion) {
        return (args[5]! as EvalCallable?)?.call(runtime, null, [
          $Database.wrap(db),
          $int(oldVersion),
          $int(newVersion),
        ])?.$value;
      },
      onOpen: (Database db) {
        return (args[6]! as EvalCallable?)?.call(runtime, null, [
          $Database.wrap(db),
        ])?.$value;
      },
      readOnly: args[7]?.$value ?? false,
      singleInstance: args[8]?.$value ?? true,
    );
    return $Future.wrap(result.then((e) => $Database.wrap(e)));
  }
}

class _$openReadOnlyDatabase implements EvalCallable {
  const _$openReadOnlyDatabase();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final String path = args[0]!.$value;
    if (path != ':memory:') {
      runtime.assertPermission('filesystem:read', path);
    }
    final result = openReadOnlyDatabase(
      path,
      singleInstance: args[1]?.$value ?? true,
    );
    return $Future.wrap(result.then((e) => $Database.wrap(e)));
  }
}

class _$deleteDatabase implements EvalCallable {
  const _$deleteDatabase();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final String path = args[0]!.$value;
    if (path != ':memory:') {
      runtime.assertPermission('filesystem:write', path);
    }
    final result = deleteDatabase(path);
    return $Future.wrap(result.then((e) => null));
  }
}

class _$databaseExists implements EvalCallable {
  const _$databaseExists();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final String path = args[0]!.$value;
    runtime.assertPermission('filesystem:read', path);
    final result = databaseExists(path);
    return $Future.wrap(result.then((e) => $bool(e)));
  }
}

class _$getDatabasesPath implements EvalCallable {
  const _$getDatabasesPath();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = getDatabasesPath();
    return $Future.wrap(result.then((e) => $String(e)));
  }
}
