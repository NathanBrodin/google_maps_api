import 'package:json_annotation/json_annotation.dart';

part 'place_special_day.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceSpecialDay {
  /// A date expressed in RFC3339 format in the local timezone for the place, for example 2010-12-31.
  final String? date;

  /// True if there are exceptional hours for this day. If true, this means that
  /// there is at least one exception for this day. Exceptions cause different values
  /// to occur in the subfields of current_opening_hours and secondary_opening_hours such as periods,
  /// weekday_text, open_now. The exceptions apply to the hours,
  /// and the hours are used to generate the other fields.
  final bool? exceptionalHours;

  const PlaceSpecialDay({
    this.date,
    this.exceptionalHours,
  });

  factory PlaceSpecialDay.fromJson(Map<String, dynamic> json) =>
      _$PlaceSpecialDayFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceSpecialDayToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceSpecialDay &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          exceptionalHours == other.exceptionalHours;

  @override
  int get hashCode => date.hashCode ^ exceptionalHours.hashCode;
}
