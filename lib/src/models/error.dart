part of jikan.models;

@JsonSerializable(createToJson: false)
class JikanError {
  /// HTTP Status returned
  int status;

  /// [Exception] generated from the PHP API
  String type;

  /// Appropriate error message from the REST API
  String message;

  /// Error response from the PHP API
  String error;

  //Clicking on this would redirect you to a generated GitHub Issue
  String report_url;

  JikanError();

  factory JikanError.fromJson(Map<String, dynamic> json) => _$JikanErrorFromJson(json);
}
