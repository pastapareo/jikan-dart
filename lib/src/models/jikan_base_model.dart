part of jikan.models;

abstract class JikanBaseModel {
  String requestHash;

  bool requestCached;

  int requestCacheExpiry;
}
