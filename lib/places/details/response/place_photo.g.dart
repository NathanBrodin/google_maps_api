// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacePhoto _$PlacePhotoFromJson(Map<String, dynamic> json) => PlacePhoto(
      height: json['height'] as int,
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      photoReference: json['photo_reference'] as String,
      width: json['width'] as int,
    );

Map<String, dynamic> _$PlacePhotoToJson(PlacePhoto instance) =>
    <String, dynamic>{
      'height': instance.height,
      'html_attributions': instance.htmlAttributions,
      'photo_reference': instance.photoReference,
      'width': instance.width,
    };
