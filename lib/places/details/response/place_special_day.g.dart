// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_special_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceSpecialDay _$PlaceSpecialDayFromJson(Map<String, dynamic> json) =>
    PlaceSpecialDay(
      date: json['date'] as String?,
      exceptionalHours: json['exceptional_hours'] as bool?,
    );

Map<String, dynamic> _$PlaceSpecialDayToJson(PlaceSpecialDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'exceptional_hours': instance.exceptionalHours,
    };
