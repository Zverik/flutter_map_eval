import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:sqflite/sqflite.dart';

const _package = 'package:sqflite/sqflite.dart';

/// dart_eval enum wrapper binding for [ConflictAlgorithm]
class $ConflictAlgorithm implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      _package,
      'ConflictAlgorithm',
      $ConflictAlgorithm._$values,
    );

    runtime.registerBridgeFunc(
      _package,
      'ConflictAlgorithm.values*g',
      $ConflictAlgorithm.$values,
    );
  }

  /// Compile-time type specification of [$ConflictAlgorithm]
  static const $spec = BridgeTypeSpec(_package, 'ConflictAlgorithm');

  /// Compile-time type declaration of [$ConflictAlgorithm]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ConflictAlgorithm]
  static const $declaration = BridgeEnumDef(
    $type,
    values: ['rollback', 'abort', 'fail', 'ignore', 'replace'],
  );

  static final _$values = {
    'rollback': $ConflictAlgorithm.wrap(ConflictAlgorithm.rollback),
    'abort': $ConflictAlgorithm.wrap(ConflictAlgorithm.abort),
    'fail': $ConflictAlgorithm.wrap(ConflictAlgorithm.fail),
    'ignore': $ConflictAlgorithm.wrap(ConflictAlgorithm.ignore),
    'replace': $ConflictAlgorithm.wrap(ConflictAlgorithm.replace),
  };

  /// Wrapper for the [ConflictAlgorithm.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = ConflictAlgorithm.values;
    return $List.view(value, (e) => $ConflictAlgorithm.wrap(e));
  }

  final $Instance _superclass;

  @override
  final ConflictAlgorithm $value;

  @override
  ConflictAlgorithm get $reified => $value;

  /// Wrap a [ConflictAlgorithm] in a [$ConflictAlgorithm]
  $ConflictAlgorithm.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [DatabaseExecutor]
class $DatabaseExecutor implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$DatabaseExecutor]
  static const $spec = BridgeTypeSpec(_package, 'DatabaseExecutor');

  /// Compile-time type declaration of [$DatabaseExecutor]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$DatabaseExecutor]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'execute': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'rawInsert': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'insert': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'nullColumnHack',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'conflictAlgorithm',
              BridgeTypeAnnotation($ConflictAlgorithm.$type, nullable: true),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'values',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'query': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.object, []),
                        nullable: true,
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'distinct',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'columns',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'groupBy',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'having',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'orderBy',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'limit',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'rawQuery': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                      BridgeTypeAnnotation(
                        BridgeTypeRef(CoreTypes.object, []),
                        nullable: true,
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'rawQueryCursor': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($QueryCursor.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'bufferSize',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
      ),

      'queryCursor': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation($QueryCursor.$type),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'distinct',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'columns',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'groupBy',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'having',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'orderBy',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'limit',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'bufferSize',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'rawUpdate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'update': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'conflictAlgorithm',
              BridgeTypeAnnotation($ConflictAlgorithm.$type, nullable: true),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'values',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'rawDelete': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'delete': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'batch': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($Batch.$type),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {
      'database': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($Database.$type),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final DatabaseExecutor $value;

  @override
  DatabaseExecutor get $reified => $value;

  /// Wrap a [DatabaseExecutor] in a [$DatabaseExecutor]
  $DatabaseExecutor.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'database':
        return $Database.wrap($value.database);
      case 'execute':
        return __execute;

      case 'rawInsert':
        return __rawInsert;

      case 'insert':
        return __insert;

      case 'query':
        return __query;

      case 'rawQuery':
        return __rawQuery;

      case 'rawQueryCursor':
        return __rawQueryCursor;

      case 'queryCursor':
        return __queryCursor;

      case 'rawUpdate':
        return __rawUpdate;

      case 'update':
        return __update;

      case 'rawDelete':
        return __rawDelete;

      case 'delete':
        return __delete;

      case 'batch':
        return __batch;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __execute = $Function(_execute);
  static $Value? _execute(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.execute(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return $Future.wrap(result.then((e) => null));
  }

  static const $Function __rawInsert = $Function(_rawInsert);
  static $Value? _rawInsert(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.rawInsert(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $int(e)));
  }

  static const $Function __insert = $Function(_insert);
  static $Value? _insert(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.insert(
      args[0]!.$value,
      (args[1]!.$reified as Map).cast(),
      nullColumnHack: args[2]?.$value,
      conflictAlgorithm: args[3]?.$value,
    );
    return $Future.wrap(result.then((e) => $int(e)));
  }

  static const $Function __query = $Function(_query);
  static $Value? _query(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.query(
      args[0]!.$value,
      distinct: args[1]?.$value,
      columns: (args[2]?.$reified as List?)?.cast(),
      where: args[3]?.$value,
      whereArgs: (args[4]?.$reified as List?)?.cast(),
      groupBy: args[5]?.$value,
      having: args[6]?.$value,
      orderBy: args[7]?.$value,
      limit: args[8]?.$value,
      offset: args[9]?.$value,
    );
    return $Future.wrap(result.then((e) => $List.view(e, (e) => $Map.wrap(e))));
  }

  static const $Function __rawQuery = $Function(_rawQuery);
  static $Value? _rawQuery(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.rawQuery(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $List.view(e, (e) => $Map.wrap(e))));
  }

  static const $Function __rawQueryCursor = $Function(_rawQueryCursor);
  static $Value? _rawQueryCursor(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.rawQueryCursor(
      args[0]!.$value,
      (args[1]!.$reified as List).cast(),
      bufferSize: args[2]?.$value,
    );
    return $Future.wrap(result.then((e) => $QueryCursor.wrap(e)));
  }

  static const $Function __queryCursor = $Function(_queryCursor);
  static $Value? _queryCursor(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.queryCursor(
      args[0]!.$value,
      distinct: args[1]?.$value,
      columns: (args[2]?.$reified as List?)?.cast(),
      where: args[3]?.$value,
      whereArgs: (args[4]?.$reified as List?)?.cast(),
      groupBy: args[5]?.$value,
      having: args[6]?.$value,
      orderBy: args[7]?.$value,
      limit: args[8]?.$value,
      offset: args[9]?.$value,
      bufferSize: args[10]?.$value,
    );
    return $Future.wrap(result.then((e) => $QueryCursor.wrap(e)));
  }

  static const $Function __rawUpdate = $Function(_rawUpdate);
  static $Value? _rawUpdate(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.rawUpdate(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $int(e)));
  }

  static const $Function __update = $Function(_update);
  static $Value? _update(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.update(
      args[0]!.$value,
      (args[1]!.$reified as Map).cast(),
      where: args[2]?.$value,
      whereArgs: (args[3]?.$reified as List?)?.cast(),
      conflictAlgorithm: args[4]?.$value,
    );
    return $Future.wrap(result.then((e) => $int(e)));
  }

  static const $Function __rawDelete = $Function(_rawDelete);
  static $Value? _rawDelete(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.rawDelete(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $int(e)));
  }

  static const $Function __delete = $Function(_delete);
  static $Value? _delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.delete(
      args[0]!.$value,
      where: args[1]?.$value,
      whereArgs: (args[2]?.$reified as List?)?.cast(),
    );
    return $Future.wrap(result.then((e) => $int(e)));
  }

  static const $Function __batch = $Function(_batch);
  static $Value? _batch(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $DatabaseExecutor;
    final result = self.$value.batch();
    return $Batch.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [Transaction]
class $Transaction implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$Transaction]
  static const $spec = BridgeTypeSpec(_package, 'Transaction');

  /// Compile-time type declaration of [$Transaction]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Transaction]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: true,
      $extends: $DatabaseExecutor.$type,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final Transaction $value;

  @override
  Transaction get $reified => $value;

  /// Wrap a [Transaction] in a [$Transaction]
  $Transaction.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [Database]
class $Database implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$Database]
  static const $spec = BridgeTypeSpec(_package, 'Database');

  /// Compile-time type declaration of [$Database]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Database]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: true,
      // TODO: should be $implements, but see method_invocation.dart:353
      $extends: $DatabaseExecutor.$type,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'close': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'transaction': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef.ref('T')),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'exclusive',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'action',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.future, [
                        BridgeTypeAnnotation(BridgeTypeRef.ref('T')),
                      ]),
                    ),
                    params: [
                      BridgeParameter(
                        'txn',
                        BridgeTypeAnnotation($Transaction.$type),
                        false,
                      ),
                    ],
                    namedParams: [],
                  ),
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'readTransaction': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef.ref('T')),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'action',
              BridgeTypeAnnotation(
                BridgeTypeRef.genericFunction(
                  BridgeFunctionDef(
                    returns: BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.future, [
                        BridgeTypeAnnotation(BridgeTypeRef.ref('T')),
                      ]),
                    ),
                    params: [
                      BridgeParameter(
                        'txn',
                        BridgeTypeAnnotation($Transaction.$type),
                        false,
                      ),
                    ],
                    namedParams: [],
                  ),
                ),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {
      'path': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'isOpen': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final Database $value;

  @override
  Database get $reified => $value;

  /// Wrap a [Database] in a [$Database]
  $Database.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'path':
        return $String($value.path);

      case 'isOpen':
        return $bool($value.isOpen);
      case 'close':
        return __close;

      case 'transaction':
        return __transaction;

      case 'readTransaction':
        return __readTransaction;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __close = $Function(_close);
  static $Value? _close(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Database;
    final result = self.$value.close();
    return $Future.wrap(result.then((e) => null));
  }

  static const $Function __transaction = $Function(_transaction);
  static $Value? _transaction(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Database;
    final result = self.$value.transaction((Transaction txn) {
      return (args[0]! as EvalCallable)(runtime, null, [
        $Transaction.wrap(txn),
      ])?.$value;
    }, exclusive: args[1]?.$value);
    return $Future.wrap(result.then((e) => runtime.wrapAlways(e)));
  }

  static const $Function __readTransaction = $Function(_readTransaction);
  static $Value? _readTransaction(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Database;
    final result = self.$value.readTransaction((Transaction txn) {
      return (args[0]! as EvalCallable)(runtime, null, [
        $Transaction.wrap(txn),
      ])?.$value;
    });
    return $Future.wrap(result.then((e) => runtime.wrapAlways(e)));
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [Batch]
class $Batch implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$Batch]
  static const $spec = BridgeTypeSpec(_package, 'Batch');

  /// Compile-time type declaration of [$Batch]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Batch]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'commit': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'exclusive',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'noResult',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'continueOnError',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'apply': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'noResult',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'continueOnError',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'rawInsert': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'insert': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [
            BridgeParameter(
              'nullColumnHack',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'conflictAlgorithm',
              BridgeTypeAnnotation($ConflictAlgorithm.$type, nullable: true),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'values',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'rawUpdate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'update': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [
            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'conflictAlgorithm',
              BridgeTypeAnnotation($ConflictAlgorithm.$type, nullable: true),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'values',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'rawDelete': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'delete': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [
            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'execute': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'query': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [
            BridgeParameter(
              'distinct',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'columns',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'where',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'whereArgs',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'groupBy',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'having',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'orderBy',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'limit',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'table',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'rawQuery': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'sql',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'arguments',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.object, []),
                    nullable: true,
                  ),
                ]),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),
    },
    getters: {
      'length': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final Batch $value;

  @override
  Batch get $reified => $value;

  /// Wrap a [Batch] in a [$Batch]
  $Batch.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'length':
        return $int($value.length);
      case 'commit':
        return __commit;

      case 'apply':
        return __apply;

      case 'rawInsert':
        return __rawInsert;

      case 'insert':
        return __insert;

      case 'rawUpdate':
        return __rawUpdate;

      case 'update':
        return __update;

      case 'rawDelete':
        return __rawDelete;

      case 'delete':
        return __delete;

      case 'execute':
        return __execute;

      case 'query':
        return __query;

      case 'rawQuery':
        return __rawQuery;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __commit = $Function(_commit);
  static $Value? _commit(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    final result = self.$value.commit(
      exclusive: args[0]?.$value,
      noResult: args[1]?.$value,
      continueOnError: args[2]?.$value,
    );
    return $Future.wrap(
      result.then(
        (e) => $List.view(e, (e) => e == null ? const $null() : $Object(e)),
      ),
    );
  }

  static const $Function __apply = $Function(_apply);
  static $Value? _apply(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    final result = self.$value.apply(
      noResult: args[0]?.$value,
      continueOnError: args[1]?.$value,
    );
    return $Future.wrap(
      result.then(
        (e) => $List.view(e, (e) => e == null ? const $null() : $Object(e)),
      ),
    );
  }

  static const $Function __rawInsert = $Function(_rawInsert);
  static $Value? _rawInsert(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Batch;
    self.$value.rawInsert(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return null;
  }

  static const $Function __insert = $Function(_insert);
  static $Value? _insert(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    self.$value.insert(
      args[0]!.$value,
      (args[1]!.$reified as Map).cast(),
      nullColumnHack: args[2]?.$value,
      conflictAlgorithm: args[3]?.$value,
    );
    return null;
  }

  static const $Function __rawUpdate = $Function(_rawUpdate);
  static $Value? _rawUpdate(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Batch;
    self.$value.rawUpdate(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return null;
  }

  static const $Function __update = $Function(_update);
  static $Value? _update(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    self.$value.update(
      args[0]!.$value,
      (args[1]!.$reified as Map).cast(),
      where: args[2]?.$value,
      whereArgs: (args[3]?.$reified as List?)?.cast(),
      conflictAlgorithm: args[4]?.$value,
    );
    return null;
  }

  static const $Function __rawDelete = $Function(_rawDelete);
  static $Value? _rawDelete(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Batch;
    self.$value.rawDelete(
      args[0]!.$value,
      (args[1]?.$reified as List?)?.cast(),
    );
    return null;
  }

  static const $Function __delete = $Function(_delete);
  static $Value? _delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    self.$value.delete(
      args[0]!.$value,
      where: args[1]?.$value,
      whereArgs: (args[2]?.$reified as List?)?.cast(),
    );
    return null;
  }

  static const $Function __execute = $Function(_execute);
  static $Value? _execute(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    self.$value.execute(args[0]!.$value, (args[1]?.$reified as List?)?.cast());
    return null;
  }

  static const $Function __query = $Function(_query);
  static $Value? _query(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Batch;
    self.$value.query(
      args[0]!.$value,
      distinct: args[1]?.$value,
      columns: (args[2]?.$reified as List?)?.cast(),
      where: args[3]?.$value,
      whereArgs: (args[4]?.$reified as List?)?.cast(),
      groupBy: args[5]?.$value,
      having: args[6]?.$value,
      orderBy: args[7]?.$value,
      limit: args[8]?.$value,
      offset: args[9]?.$value,
    );
    return null;
  }

  static const $Function __rawQuery = $Function(_rawQuery);
  static $Value? _rawQuery(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Batch;
    self.$value.rawQuery(args[0]!.$value, (args[1]?.$reified as List?)?.cast());
    return null;
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [QueryCursor]
class $QueryCursor implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$QueryCursor]
  static const $spec = BridgeTypeSpec(_package, 'QueryCursor');

  /// Compile-time type declaration of [$QueryCursor]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$QueryCursor]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'moveNext': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'close': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {
      'current': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final QueryCursor $value;

  @override
  QueryCursor get $reified => $value;

  /// Wrap a [QueryCursor] in a [$QueryCursor]
  $QueryCursor.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'current':
        return $Map.wrap($value.current);
      case 'moveNext':
        return __moveNext;

      case 'close':
        return __close;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __moveNext = $Function(_moveNext);
  static $Value? _moveNext(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $QueryCursor;
    final result = self.$value.moveNext();
    return $Future.wrap(result.then((e) => $bool(e)));
  }

  static const $Function __close = $Function(_close);
  static $Value? _close(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $QueryCursor;
    final result = self.$value.close();
    return $Future.wrap(result.then((e) => null));
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
