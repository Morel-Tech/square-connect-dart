// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      startDate:
          SquareDate.fromJson(json['start_date'] as Map<String, dynamic>),
      endDate: SquareDate.fromJson(json['end_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) => <String, dynamic>{
      'start_date': instance.startDate.toJson(),
      'end_date': instance.endDate.toJson(),
    };
