final httpSource = '''
library;

export 'src/base_request.dart';
export 'src/base_response.dart'
    show BaseResponse, BaseResponseWithUrl, HeadersWithSplitValues;
export 'src/byte_stream.dart';
export 'src/client.dart' hide zoneClient;
export 'src/exception.dart';
export 'src/request.dart';
export 'src/response.dart';
export 'src/streamed_response.dart' show StreamedResponse;
''';