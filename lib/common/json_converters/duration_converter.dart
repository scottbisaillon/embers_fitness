import 'package:json_annotation/json_annotation.dart';

class DurationConverter implements JsonConverter<Duration, int> {
  const DurationConverter();

  @override
  Duration fromJson(int json) {
    return Duration(milliseconds: json);
  }

  @override
  int toJson(Duration object) {
    return object.inMilliseconds;
  }
}

class NullableDurationConverter implements JsonConverter<Duration?, int?> {
  const NullableDurationConverter();

  @override
  Duration? fromJson(int? json) {
    return json != null ? Duration(milliseconds: json) : null;
  }

  @override
  int? toJson(Duration? object) {
    return object?.inMilliseconds;
  }
}
