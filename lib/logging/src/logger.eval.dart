import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:logging/logging.dart';

import 'level.eval.dart';
import 'log_record.eval.dart';

/// dart_eval wrapper binding for [Logger]
class $Logger implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:logging/src/logger.dart',
      'Logger.',
      $Logger.$new,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/logger.dart',
      'Logger.detached',
      $Logger.$detached,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/logger.dart',
      'Logger.root*g',
      $Logger.$root,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/logger.dart',
      'Logger.attachedLoggers*g',
      $Logger.$attachedLoggers,
    );
  }

  /// Compile-time type specification of [$Logger]
  static const $spec = BridgeTypeSpec(
    'package:logging/src/logger.dart',
    'Logger',
  );

  /// Compile-time type declaration of [$Logger]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Logger]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'name',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),

      'detached': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'name',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'clearListeners': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [],
        ),
      ),

      'isLoggable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
          namedParams: [],
          params: [
            BridgeParameter('value', BridgeTypeAnnotation($Level.$type), false),
          ],
        ),
      ),

      'log': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'logLevel',
              BridgeTypeAnnotation($Level.$type),
              false,
            ),

            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'zone',
              BridgeTypeAnnotation(
                BridgeTypeRef(AsyncTypes.zone, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'finest': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'finer': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'fine': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'config': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'info': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'warning': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'severe': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),

      'shout': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              false,
            ),

            BridgeParameter(
              'error',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'stackTrace',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stackTrace, []),
                nullable: true,
              ),
              true,
            ),
          ],
        ),
      ),
    },
    getters: {
      'fullName': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'level': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($Level.$type),
          namedParams: [],
          params: [],
        ),
      ),

      'onLevelChanged': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.stream, [
              BridgeTypeAnnotation($Level.$type, nullable: true),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'onRecord': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.stream, [
              BridgeTypeAnnotation($LogRecord.$type),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'attachedLoggers': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.iterable, [
              BridgeTypeAnnotation($Logger.$type),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
        isStatic: true,
      ),
    },
    setters: {
      'level': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation($Level.$type, nullable: true),
              false,
            ),
          ],
        ),
      ),
    },
    fields: {
      'name': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'parent': BridgeFieldDef(
        BridgeTypeAnnotation($Logger.$type, nullable: true),
        isStatic: false,
      ),

      'children': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.map, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            BridgeTypeAnnotation($Logger.$type),
          ]),
        ),
        isStatic: false,
      ),

      'root': BridgeFieldDef(
        BridgeTypeAnnotation($Logger.$type),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Logger.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Logger.wrap(Logger(args[0]!.$value));
  }

  /// Wrapper for the [Logger.detached] constructor
  static $Value? $detached(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $Logger.wrap(Logger.detached(args[0]!.$value));
  }

  /// Wrapper for the [Logger.root] getter
  static $Value? $root(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Logger.root;
    return $Logger.wrap(value);
  }

  /// Wrapper for the [Logger.attachedLoggers] getter
  static $Value? $attachedLoggers(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = Logger.attachedLoggers;
    return $Iterable.wrap(value);
  }

  final $Instance _superclass;

  @override
  final Logger $value;

  @override
  Logger get $reified => $value;

  /// Wrap a [Logger] in a [$Logger]
  $Logger.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);

      case 'parent':
        final _parent = $value.parent;
        return _parent == null ? const $null() : $Logger.wrap(_parent);

      case 'children':
        return $Map.wrap($value.children);

      case 'fullName':
        return $String($value.fullName);

      case 'level':
        return $Level.wrap($value.level);

      case 'onLevelChanged':
        return $Stream.wrap(
          $value.onLevelChanged.map(
            (e) => e == null ? const $null() : $Level.wrap(e),
          ),
        );

      case 'onRecord':
        return $Stream.wrap($value.onRecord.map((e) => $LogRecord.wrap(e)));
      case 'clearListeners':
        return __clearListeners;

      case 'isLoggable':
        return __isLoggable;

      case 'log':
        return __log;

      case 'finest':
        return __finest;

      case 'finer':
        return __finer;

      case 'fine':
        return __fine;

      case 'config':
        return __config;

      case 'info':
        return __info;

      case 'warning':
        return __warning;

      case 'severe':
        return __severe;

      case 'shout':
        return __shout;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __clearListeners = $Function(_clearListeners);
  static $Value? _clearListeners(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Logger;
    self.$value.clearListeners();
    return null;
  }

  static const $Function __isLoggable = $Function(_isLoggable);
  static $Value? _isLoggable(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Logger;
    final result = self.$value.isLoggable(args[0]!.$value);
    return $bool(result);
  }

  static const $Function __log = $Function(_log);
  static $Value? _log(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.log(
      args[0]!.$value,
      args[1]!.$value,
      args[2]?.$value,
      args[3]?.$value,
      args[4]?.$value,
    );
    return null;
  }

  static const $Function __finest = $Function(_finest);
  static $Value? _finest(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.finest(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __finer = $Function(_finer);
  static $Value? _finer(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.finer(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __fine = $Function(_fine);
  static $Value? _fine(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.fine(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __config = $Function(_config);
  static $Value? _config(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.config(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __info = $Function(_info);
  static $Value? _info(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.info(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __warning = $Function(_warning);
  static $Value? _warning(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.warning(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __severe = $Function(_severe);
  static $Value? _severe(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.severe(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  static const $Function __shout = $Function(_shout);
  static $Value? _shout(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Logger;
    self.$value.shout(args[0]!.$value, args[1]?.$value, args[2]?.$value);
    return null;
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'level':
        $value.level = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
