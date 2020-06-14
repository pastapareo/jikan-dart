library jikan;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jikan/src/models/_models.dart';

export 'src/models/_models.dart';

part 'src/endpoints/animes.dart';
part 'src/endpoints/endpoint_base.dart';
part 'src/endpoints/seasons.dart';
part 'src/endpoints/persons.dart';
part 'src/endpoints/characters.dart';
part 'src/jikan.dart';
part 'src/jikan_base.dart';
part 'src/jikan_exception.dart';
