import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:logging/logging.dart';

/// dart_eval wrapper binding for [Level]
class $Level implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.',
      $Level.$new,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.ALL*g',
      $Level.$ALL,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.OFF*g',
      $Level.$OFF,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.FINEST*g',
      $Level.$FINEST,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.FINER*g',
      $Level.$FINER,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.FINE*g',
      $Level.$FINE,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.CONFIG*g',
      $Level.$CONFIG,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.INFO*g',
      $Level.$INFO,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.WARNING*g',
      $Level.$WARNING,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.SEVERE*g',
      $Level.$SEVERE,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.SHOUT*g',
      $Level.$SHOUT,
    );

    runtime.registerBridgeFunc(
      'package:logging/src/level.dart',
      'Level.LEVELS*g',
      $Level.$LEVELS,
    );
  }

  /// Compile-time type specification of [$Level]
  static const $spec = BridgeTypeSpec(
    'package:logging/src/level.dart',
    'Level',
  );

  /// Compile-time type declaration of [$Level]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Level]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $implements: [
        BridgeTypeRef(CoreTypes.comparable, [BridgeTypeAnnotation($type)]),
      ],
    ),
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

            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'compareTo': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
          namedParams: [],
          params: [
            BridgeParameter('other', BridgeTypeAnnotation($type), false),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'name': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'value': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'ALL': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'OFF': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'FINEST': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'FINER': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'FINE': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'CONFIG': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'INFO': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'WARNING': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'SEVERE': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),
      'SHOUT': BridgeFieldDef(BridgeTypeAnnotation($type), isStatic: true),

      'LEVELS': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [BridgeTypeAnnotation($type)]),
        ),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Level.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Level.wrap(Level(args[0]!.$value, args[1]!.$value));
  }

  /// Wrapper for the [Level.ALL] getter
  static $Value? $ALL(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.ALL;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.OFF] getter
  static $Value? $OFF(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.OFF;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.FINEST] getter
  static $Value? $FINEST(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.FINEST;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.FINER] getter
  static $Value? $FINER(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.FINER;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.FINE] getter
  static $Value? $FINE(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.FINE;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.CONFIG] getter
  static $Value? $CONFIG(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.CONFIG;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.INFO] getter
  static $Value? $INFO(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.INFO;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.WARNING] getter
  static $Value? $WARNING(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.WARNING;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.SEVERE] getter
  static $Value? $SEVERE(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.SEVERE;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.SHOUT] getter
  static $Value? $SHOUT(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.SHOUT;
    return $Level.wrap(value);
  }

  /// Wrapper for the [Level.LEVELS] getter
  static $Value? $LEVELS(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Level.LEVELS;
    return $List.view(value, (e) => $Level.wrap(e));
  }

  final $Instance _superclass;

  @override
  final Level $value;

  @override
  Level get $reified => $value;

  /// Wrap a [Level] in a [$Level]
  $Level.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);

      case 'value':
        return $int($value.value);
      case 'compareTo':
        return __compareTo;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __compareTo = $Function(_compareTo);
  static $Value? _compareTo(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $Level;
    final result = self.$value.compareTo(args[0]!.$value);
    return $int(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
