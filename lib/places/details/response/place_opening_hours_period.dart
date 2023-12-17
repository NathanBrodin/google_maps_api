import 'package:google_maps_api_flutter/places/details/response/place_opening_hours_period_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_opening_hours_period.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceOpeningHoursPeriod {
  /// Contains a pair of day and time objects describing when the place opens.
  final PlaceOpeningHoursPeriodDetail open;

  /// May contain a pair of day and time objects describing when the place closes.
  /// If a place is always open, the close section will be missing from the response.
  /// Clients can rely on always-open being represented as an open period containing day
  /// with value 0 and time with value 0000, and no close.
  final PlaceOpeningHoursPeriodDetail? close;

  const PlaceOpeningHoursPeriod({
    required this.open,
    this.close,
  });

  /// Converts a Map in the format provided by the JSON parser into
  /// an instance of the PlaceOpeningHoursPeriod class.
  factory PlaceOpeningHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodFromJson(json);

  /// Converts an instance of the PlaceOpeningHoursPeriod class into a Map
  /// that can be serialized to JSON.
  Map<String, dynamic> toJson() => _$PlaceOpeningHoursPeriodToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceOpeningHoursPeriod &&
          runtimeType == other.runtimeType &&
          open == other.open &&
          close == other.close;

  @override
  int get hashCode => open.hashCode ^ close.hashCode;
}
