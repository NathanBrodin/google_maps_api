import 'package:flutter/foundation.dart';
import 'package:google_maps_api/places/details/response/place.dart';
import 'package:google_maps_api/places/details/response/place_details_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_details_response.g.dart';

/// https://developers.google.com/maps/documentation/places/web-service/details#PlacesDetailsResponse
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceDetailsResponse {
  /// May contain a set of attributions about this listing which must be displayed to the user (some listings may not have attribution).
  final List<String> htmlAttributions;

  /// Contains the detailed information about the place requested.
  final Place result;

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  final PlacesDetailsStatus status;

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object.
  final List<String>? infoMessages;

  const PlaceDetailsResponse({
    required this.htmlAttributions,
    required this.result,
    required this.status,
    this.infoMessages,
  });

  factory PlaceDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDetailsResponseToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceDetailsResponse &&
          runtimeType == other.runtimeType &&
          listEquals(htmlAttributions, other.htmlAttributions) &&
          result == other.result &&
          status == other.status &&
          listEquals(infoMessages, other.infoMessages);

  @override
  int get hashCode =>
      htmlAttributions.hashCode ^
      result.hashCode ^
      status.hashCode ^
      infoMessages.hashCode;
}
