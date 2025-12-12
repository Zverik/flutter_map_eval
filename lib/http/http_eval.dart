import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_map_eval/http/src/http.dart';
import 'src/functions.dart';
import 'src/base_request.eval.dart';
import 'src/base_response.eval.dart';
import 'src/byte_stream.eval.dart';
import 'src/client.eval.dart';
import 'src/exception.eval.dart';
import 'src/request.eval.dart';
import 'src/response.eval.dart';
import 'src/streamed_response.eval.dart';

/// [EvalPlugin] for http
class HttpPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:http';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($BaseRequest.$declaration);
    registry.defineBridgeClass($BaseResponse.$declaration);
    registry.defineBridgeClass($ByteStream.$declaration);
    registry.defineBridgeClass($Client.$declaration);
    registry.defineBridgeClass($ClientException.$declaration);
    registry.defineBridgeClass($Request.$declaration);
    registry.defineBridgeClass($Response.$declaration);
    registry.defineBridgeClass($StreamedResponse.$declaration);
    configureFunctionsForCompile(registry);
    registry.addSource(
      DartSource('package:http/http.dart', httpSource),
    );
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $BaseRequest.configureForRuntime(runtime);
    $BaseResponse.configureForRuntime(runtime);
    $ByteStream.configureForRuntime(runtime);
    $Client.configureForRuntime(runtime);
    $ClientException.configureForRuntime(runtime);
    $Request.configureForRuntime(runtime);
    $Response.configureForRuntime(runtime);
    $StreamedResponse.configureForRuntime(runtime);
    configureFunctionsForRuntime(runtime);
  }
}
