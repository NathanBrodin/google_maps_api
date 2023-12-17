// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceAutocompletePrediction _$PlaceAutocompletePredictionFromJson(
        Map<String, dynamic> json) =>
    PlaceAutocompletePrediction(
      description: json['description'] as String,
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>)
          .map((e) => PlaceAutocompleteMatchedSubstring.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      structuredFormatting: PlaceAutocompleteStructuredFormat.fromJson(
          json['structured_formatting'] as Map<String, dynamic>),
      terms: (json['terms'] as List<dynamic>)
          .map((e) => PlaceAutocompleteTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['place_id'] as String?,
      distanceMeters: json['distance_meters'] as int?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PlaceAutocompletePredictionToJson(
        PlaceAutocompletePrediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings':
          instance.matchedSubstrings.map((e) => e.toJson()).toList(),
      'structured_formatting': instance.structuredFormatting.toJson(),
      'terms': instance.terms.map((e) => e.toJson()).toList(),
      'distance_meters': instance.distanceMeters,
      'place_id': instance.placeId,
      'types': instance.types,
    };
