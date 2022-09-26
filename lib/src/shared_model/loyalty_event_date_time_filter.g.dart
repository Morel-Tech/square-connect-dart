// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_date_time_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventDateTimeFilter _$LoyaltyEventDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventDateTimeFilter(
      createdAt: TimeRange.fromJson(json['created_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyEventDateTimeFilterToJson(
        LoyaltyEventDateTimeFilter instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toJson(),
    };
