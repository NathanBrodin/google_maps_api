import 'package:flutter/foundation.dart';
import 'package:google_maps_api_flutter/places/details/response/place_opening_hours_period.dart';
import 'package:google_maps_api_flutter/places/details/response/place_special_day.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_opening_hours.g.dart';

/// An object describing the opening hours of a place.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceOpeningHours {
  /// A boolean value indicating if the place is open at the current time.
  final bool? openNow;

  /// An array of opening periods covering seven days, starting from Sunday, in chronological order.
  final List<PlaceOpeningHoursPeriod>? periods;

  /// An array of up to seven entries corresponding to the next seven days.
  final List<PlaceSpecialDay>? specialDays;

  /// A type string used to identify the type of secondary hours
  /// (for example, DRIVE_THROUGH, HAPPY_HOUR, DELIVERY, TAKEOUT, KITCHEN, BREAKFAST, LUNCH, DINNER, BRUNCH, PICKUP, SENIOR_HOURS).
  /// Set for secondary_opening_hours only.
  final String? type;

  /// An array of strings describing in human-readable text the hours of the place.
  final List<String>? weekdayText;

  const PlaceOpeningHours({
    this.openNow,
    this.periods,
    this.specialDays,
    this.type,
    this.weekdayText,
  });

  /// Converts a Map in the format provided by the JSON parser into
  /// an instance of the PlaceOpeningHours class.
  factory PlaceOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursFromJson(json);

  /// Converts an instance of the PlaceOpeningHours class into a Map
  /// that can be serialized to JSON.
  Map<String, dynamic> toJson() => _$PlaceOpeningHoursToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceOpeningHours &&
          runtimeType == other.runtimeType &&
          openNow == other.openNow &&
          listEquals(periods, other.periods) &&
          listEquals(specialDays, other.specialDays) &&
          type == other.type &&
          listEquals(weekdayText, other.weekdayText);

  @override
  int get hashCode =>
      openNow.hashCode ^
      periods.hashCode ^
      specialDays.hashCode ^
      type.hashCode ^
      weekdayText.hashCode;
}
