import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:url_launcher/url_launcher.dart';

const _package = 'package:url_launcher/url_launcher.dart';

/// dart_eval function wrapper binding for [launchUrl]
class $launchUrlFn implements EvalCallable {
  const $launchUrlFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      _package,
      'launchUrl',
      const $launchUrlFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    _package,
    'launchUrl',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        ]),
      ),
      namedParams: [
        BridgeParameter(
          'mode',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                _package,
                'LaunchMode',
              ),
              [],
            ),
          ),
          true,
        ),

        BridgeParameter(
          'webViewConfiguration',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                _package,
                'WebViewConfiguration',
              ),
              [],
            ),
          ),
          true,
        ),

        BridgeParameter(
          'browserConfiguration',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                _package,
                'BrowserConfiguration',
              ),
              [],
            ),
          ),
          true,
        ),

        BridgeParameter(
          'webOnlyWindowName',
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string, []),
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
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = launchUrl(
      args[0]!.$value,
      mode: args[1]?.$value ?? LaunchMode.platformDefault,
      webViewConfiguration: args[2]?.$value ?? const WebViewConfiguration(),
      browserConfiguration: args[3]?.$value ?? const BrowserConfiguration(),
      webOnlyWindowName: args[4]?.$value,
    );
    return $Future.wrap(result.then((e) => $bool(e)));
  }
}

/// dart_eval function wrapper binding for [canLaunchUrl]
class $canLaunchUrlFn implements EvalCallable {
  const $canLaunchUrlFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      _package,
      'canLaunchUrl',
      const $canLaunchUrlFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    _package,
    'canLaunchUrl',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        ]),
      ),
      namedParams: [],
      params: [
        BridgeParameter(
          'url',
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, [])),
          false,
        ),
      ],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = canLaunchUrl(args[0]!.$value);
    return $Future.wrap(result.then((e) => $bool(e)));
  }
}

/// dart_eval function wrapper binding for [closeInAppWebView]
class $closeInAppWebViewFn implements EvalCallable {
  const $closeInAppWebViewFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      _package,
      'closeInAppWebView',
      const $closeInAppWebViewFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    _package,
    'closeInAppWebView',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
        ]),
      ),
      namedParams: [],
      params: [],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = closeInAppWebView();
    return $Future.wrap(result.then((e) => null));
  }
}

/// dart_eval function wrapper binding for [supportsLaunchMode]
class $supportsLaunchModeFn implements EvalCallable {
  const $supportsLaunchModeFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      _package,
      'supportsLaunchMode',
      const $supportsLaunchModeFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    _package,
    'supportsLaunchMode',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        ]),
      ),
      namedParams: [],
      params: [
        BridgeParameter(
          'mode',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                _package,
                'LaunchMode',
              ),
              [],
            ),
          ),
          false,
        ),
      ],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = supportsLaunchMode(args[0]!.$value);
    return $Future.wrap(result.then((e) => $bool(e)));
  }
}

/// dart_eval function wrapper binding for [supportsCloseForLaunchMode]
class $supportsCloseForLaunchModeFn implements EvalCallable {
  const $supportsCloseForLaunchModeFn();

  static void configureForRuntime(Runtime runtime) {
    return runtime.registerBridgeFunc(
      _package,
      'supportsCloseForLaunchMode',
      const $supportsCloseForLaunchModeFn().call,
    );
  }

  static const $declaration = BridgeFunctionDeclaration(
    _package,
    'supportsCloseForLaunchMode',
    BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        BridgeTypeRef(CoreTypes.future, [
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        ]),
      ),
      namedParams: [],
      params: [
        BridgeParameter(
          'mode',
          BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                _package,
                'LaunchMode',
              ),
              [],
            ),
          ),
          false,
        ),
      ],
    ),
  );

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final result = supportsCloseForLaunchMode(args[0]!.$value);
    return $Future.wrap(result.then((e) => $bool(e)));
  }
}
