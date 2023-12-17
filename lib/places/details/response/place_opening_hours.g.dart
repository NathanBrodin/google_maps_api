// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceOpeningHours _$PlaceOpeningHoursFromJson(Map<String, dynamic> json) =>
    PlaceOpeningHours(
      openNow: json['open_now'] as bool?,
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) =>
              PlaceOpeningHoursPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialDays: (json['special_days'] as List<dynamic>?)
          ?.map((e) => PlaceSpecialDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      weekdayText: (json['weekday_text'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlaceOpeningHoursToJson(PlaceOpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
      'periods': instance.periods?.map((e) => e.toJson()).toList(),
      'special_days': instance.specialDays?.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'weekday_text': instance.weekdayText,
    };
