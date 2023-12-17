import 'package:flutter/foundation.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_prediction.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/places_autocomplete_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_autocomplete_response.g.dart';

/// https://developers.google.com/maps/documentation/places/web-service/autocomplete#PlacesAutocompleteResponse
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlacesAutocompleteResponse {
  /// Contains an array of predictions.
  final List<PlaceAutocompletePrediction> predictions;

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  final PlacesAutocompleteStatus status;

  /// This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
  final String? errorMessage;

  /// When the service returns additional information about the request specification,
  final String? infoMessage;

  const PlacesAutocompleteResponse({
    required this.predictions,
    required this.status,
    this.errorMessage,
    this.infoMessage,
  });

  factory PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesAutocompleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesAutocompleteResponseToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlacesAutocompleteResponse &&
          listEquals(predictions, other.predictions) &&
          status == other.status &&
          errorMessage == other.errorMessage &&
          infoMessage == other.infoMessage;

  @override
  int get hashCode =>
      predictions.hashCode ^
      status.hashCode ^
      errorMessage.hashCode ^
      infoMessage.hashCode;
}
