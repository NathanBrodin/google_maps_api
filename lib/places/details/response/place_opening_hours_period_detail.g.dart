// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_opening_hours_period_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceOpeningHoursPeriodDetail _$PlaceOpeningHoursPeriodDetailFromJson(
        Map<String, dynamic> json) =>
    PlaceOpeningHoursPeriodDetail(
      day: json['day'] as int,
      time: json['time'] as String,
      date: json['date'] as String?,
      truncated: json['truncated'] as bool?,
    );

Map<String, dynamic> _$PlaceOpeningHoursPeriodDetailToJson(
        PlaceOpeningHoursPeriodDetail instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'date': instance.date,
      'truncated': instance.truncated,
    };
