# Flutter Map Eval

A set of eval plugins for the [dart_eval](https://pub.dev/packages/dart_eval) interpreter.
Includes:

* [logging](https://pub.dev/packages/logging)
* [http](https://pub.dev/packages/http)
* [latlong2](https://pub.dev/packages/latlong2)
* [country_coder](https://pub.dev/packages/country_coder)
* [fast_geohash](https://pub.dev/packages/fast_geohash) (TODO)
* [sqflite](https://pub.dev/packages/sqflite)\*
* [share_plus](https://pub.dev/packages/share_plus)\* (TODO)
* [url_launcher](https://pub.dev/packages/url_launcher)\*
* [adaptive_dialog](https://pub.dev/packages/adaptive_dialog)\*
* [responsive_grid_list](https://pub.dev/packages/responsive_grid_list)\*
* [flutter_map](https://pub.dev/packages/flutter_map)\*
* [flutter_map_geojson2](https://pub.dev/packages/flutter_map_geojson2)\*

Plugins marked with "\*" require the [flutter_eval](https://pub.dev/packages/flutter_eval) bindings.
This entire package also depends
on Flutter, so splitting it to work with plain Dart might pose a challenge. But you can import
`dart_pkgs_eval.dart` for that.

Seemingly random, those packages are useful for the [Every Door](https://every-door.app/)
OpenStreetMap editor plugins.

## Usage

You should know what to do.

See [flutter_eval docs](https://pub.dev/packages/flutter_eval) and do like they do.
You can find the `flutter_map_eval.json` file for the compiler on the Github Releases page.

## Additional information

Maintained by Ilya Zverev and published under the BSD-3 license.