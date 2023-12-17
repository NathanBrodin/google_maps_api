// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesAutocompleteResponse _$PlacesAutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesAutocompleteResponse(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) =>
              PlaceAutocompletePrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$PlacesAutocompleteStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      infoMessage: json['info_message'] as String?,
    );

Map<String, dynamic> _$PlacesAutocompleteResponseToJson(
        PlacesAutocompleteResponse instance) =>
    <String, dynamic>{
      'predictions': instance.predictions.map((e) => e.toJson()).toList(),
      'status': _$PlacesAutocompleteStatusEnumMap[instance.status]!,
      'error_message': instance.errorMessage,
      'info_message': instance.infoMessage,
    };

const _$PlacesAutocompleteStatusEnumMap = {
  PlacesAutocompleteStatus.OK: 'OK',
  PlacesAutocompleteStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  PlacesAutocompleteStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  PlacesAutocompleteStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  PlacesAutocompleteStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  PlacesAutocompleteStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};
