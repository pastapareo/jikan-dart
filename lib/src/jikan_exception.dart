part of jikan;

class JikanException implements Exception {
  String message;
  int statusCode;
  String statusText;

  JikanException(this.message, [this.statusCode, this.statusText]);

  JikanException.fromJikan(JikanError error) {
    message = error.message;
    statusCode = error.status;
    statusText = error.error;
  }
}
