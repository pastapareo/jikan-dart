# jikan-dart
A dart library for Jikan - an unofficial MyAnimeList API.

## Usage

A simple usage example:

```dart
import 'package:jikan/jikan.dart';

void main() async {
  var jikan = Jikan();
  final slamDunk = 170;

  var anime = await jikan.animes.getAnime(slamDunk);
  var stats = await jikan.animes.getAnimeStats(slamDunk);
  var episodes = await jikan.animes.getAnimeEpisodes(slamDunk, page: 2);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme

## Development 

### Generating JSON Serializers

Run `pub run build_runner build` to generate JSON serilizers via [json_serializable][json].

[json]: https://pub.dartlang.org/packages/json_serializable
