import 'package:json_annotation/json_annotation.dart';

part 'place_opening_hours_period_detail.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceOpeningHoursPeriodDetail {
  /// A number from 0–6, corresponding to the days of the week, starting on Sunday.
  /// For example, 2 means Tuesday.
  final int day;

  /// May contain a time of day in 24-hour hhmm format. Values are in the range 0000–2359.
  /// The time will be reported in the place’s time zone.
  final String time;

  /// A date expressed in RFC3339 format in the local timezone for the place, for example 2010-12-31.
  final String? date;

  /// True if a given period was truncated due to a seven-day cutoff,
  /// where the period starts before midnight on the date of the request and/or ends at or after midnight on the last day.
  /// This property indicates that the period for open or close can extend past this seven-day cutoff.
  final bool? truncated;

  const PlaceOpeningHoursPeriodDetail({
    required this.day,
    required this.time,
    this.date,
    this.truncated,
  });

  /// Converts a Map in the format provided by the JSON parser into
  /// an instance of the PlaceOpeningHoursPeriodDetail class.
  factory PlaceOpeningHoursPeriodDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodDetailFromJson(json);

  /// Converts an instance of the PlaceOpeningHoursPeriodDetail class into a Map
  /// that can be serialized to JSON.
  Map<String, dynamic> toJson() => _$PlaceOpeningHoursPeriodDetailToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceOpeningHoursPeriodDetail &&
          runtimeType == other.runtimeType &&
          day == other.day &&
          time == other.time &&
          date == other.date &&
          truncated == other.truncated;

  @override
  int get hashCode =>
      day.hashCode ^ time.hashCode ^ date.hashCode ^ truncated.hashCode;
}
