import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/src/eval/shared/stdlib/async/zone.dart';
import 'package:logging/logging.dart';

import 'level.eval.dart';

/// dart_eval wrapper binding for [LogRecord]
class $LogRecord implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:logging/src/log_record.dart',
      'LogRecord.',
      $LogRecord.$new,
    );
  }

  /// Compile-time type specification of [$LogRecord]
  static const $spec = BridgeTypeSpec(
    'package:logging/src/log_record.dart',
    'LogRecord',
  );

  /// Compile-time type declaration of [$LogRecord]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LogRecord]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter('level', BridgeTypeAnnotation($Level.$type), false),

            BridgeParameter(
              'message',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'loggerName',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
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

            BridgeParameter(
              'object',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.object, []),
                nullable: true,
              ),
              true,
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
      'level': BridgeFieldDef(
        BridgeTypeAnnotation($Level.$type),
        isStatic: false,
      ),

      'message': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'object': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.object, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'loggerName': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'time': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, [])),
        isStatic: false,
      ),

      'sequenceNumber': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      '_nextNumber': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: true,
      ),

      'error': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.object, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'stackTrace': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.stackTrace, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'zone': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(AsyncTypes.zone, []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LogRecord.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LogRecord.wrap(
      LogRecord(
        args[0]!.$value,
        args[1]!.$value,
        args[2]!.$value,
        args[3]?.$value,
        args[4]?.$value,
        args[5]?.$value,
        args[6]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final LogRecord $value;

  @override
  LogRecord get $reified => $value;

  /// Wrap a [LogRecord] in a [$LogRecord]
  $LogRecord.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'level':
        return $Level.wrap($value.level);

      case 'message':
        return $String($value.message);

      case 'object':
        final _object = $value.object;
        return _object == null ? const $null() : $Object(_object);

      case 'loggerName':
        return $String($value.loggerName);

      case 'time':
        return $DateTime.wrap($value.time);

      case 'sequenceNumber':
        return $int($value.sequenceNumber);

      case 'error':
        final _error = $value.error;
        return _error == null ? const $null() : $Object(_error);

      case 'stackTrace':
        final _stackTrace = $value.stackTrace;
        return _stackTrace == null
            ? const $null()
            : $StackTrace.wrap(_stackTrace);

      case 'zone':
        final _zone = $value.zone;
        return _zone == null ? const $null() : $Zone.wrap(_zone);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
