// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_structured_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceAutocompleteStructuredFormat _$PlaceAutocompleteStructuredFormatFromJson(
        Map<String, dynamic> json) =>
    PlaceAutocompleteStructuredFormat(
      mainText: json['main_text'] as String,
      mainTextMatchedSubstrings:
          (json['main_text_matched_substrings'] as List<dynamic>)
              .map((e) => PlaceAutocompleteMatchedSubstring.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      secondaryText: json['secondary_text'] as String?,
      secondaryTextMatchedSubstrings:
          (json['secondary_text_matched_substrings'] as List<dynamic>?)
              ?.map((e) => PlaceAutocompleteMatchedSubstring.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PlaceAutocompleteStructuredFormatToJson(
        PlaceAutocompleteStructuredFormat instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'main_text_matched_substrings':
          instance.mainTextMatchedSubstrings.map((e) => e.toJson()).toList(),
      'secondary_text': instance.secondaryText,
      'secondary_text_matched_substrings': instance
          .secondaryTextMatchedSubstrings
          ?.map((e) => e.toJson())
          .toList(),
    };
