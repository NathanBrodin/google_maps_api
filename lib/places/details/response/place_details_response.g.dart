// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsResponse _$PlaceDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    PlaceDetailsResponse(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      result: Place.fromJson(json['result'] as Map<String, dynamic>),
      status: $enumDecode(_$PlacesDetailsStatusEnumMap, json['status']),
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlaceDetailsResponseToJson(
        PlaceDetailsResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'result': instance.result.toJson(),
      'status': _$PlacesDetailsStatusEnumMap[instance.status]!,
      'info_messages': instance.infoMessages,
    };

const _$PlacesDetailsStatusEnumMap = {
  PlacesDetailsStatus.OK: 'OK',
  PlacesDetailsStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  PlacesDetailsStatus.NOT_FOUND: 'NOT_FOUND',
  PlacesDetailsStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  PlacesDetailsStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  PlacesDetailsStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  PlacesDetailsStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};
