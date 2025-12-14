final latlongSource = '''
library latlong2;

import 'dart:math' as math;

// All sub-libraries are "parts", so the natural resolution won't work.
// Hence not exporting, but just marking those as existing in this
// library root.

const double equatorRadius = 6378137.0;

const double polarRadius = 6356752.314245;

const double flattening = 1 / 298.257223563;

const double earthRadius = equatorRadius;

const double pi = math.pi;

double degToRadian(final double deg) => deg * (pi / 180.0);

double radianToDeg(final double rad) => rad * (180.0 / pi);

double round(final double value, {final int decimals = 6}) =>
    (value * math.pow(10, decimals)).round() / math.pow(10, decimals);

double normalizeBearing(final double bearing) => (bearing + 360) % 360;

String zeroPad(num number) => (number < 10 ? '0' : '') + number.toString();
''';