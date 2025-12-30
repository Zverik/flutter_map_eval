library;

import 'country_coder/country_coder_eval.dart';
import 'http/http_eval.dart';
import 'latlong2/latlong2_eval.dart';
import 'logging/logging_eval.dart';

export 'country_coder/country_coder_eval.dart';
export 'http/http_eval.dart';
export 'latlong2/latlong2_eval.dart';
export 'logging/logging_eval.dart';

final plugins = [
  LatLong2Plugin(),
  LoggingPlugin(),
  HttpPlugin(),
  CountryCoderPlugin(),
];
