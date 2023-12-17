// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceAutocompleteTerm _$PlaceAutocompleteTermFromJson(
        Map<String, dynamic> json) =>
    PlaceAutocompleteTerm(
      offset: (json['offset'] as num).toDouble(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$PlaceAutocompleteTermToJson(
        PlaceAutocompleteTerm instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'value': instance.value,
    };
