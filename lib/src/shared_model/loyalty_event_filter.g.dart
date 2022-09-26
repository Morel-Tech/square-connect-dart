// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventFilter _$LoyaltyEventFilterFromJson(Map<String, dynamic> json) =>
    LoyaltyEventFilter(
      dateTimeFilter: json['date_time_filter'] == null
          ? null
          : LoyaltyEventDateTimeFilter.fromJson(
              json['date_time_filter'] as Map<String, dynamic>),
      locationFilter: json['location_filter'] == null
          ? null
          : LoyaltyEventLocationFilter.fromJson(
              json['location_filter'] as Map<String, dynamic>),
      loyaltyAccountFilter: json['loyalty_account_filter'] == null
          ? null
          : LoyaltyEventLoyaltyAccountFilter.fromJson(
              json['loyalty_account_filter'] as Map<String, dynamic>),
      orderFilter: json['order_filter'] == null
          ? null
          : LoyaltyEventOrderFilter.fromJson(
              json['order_filter'] as Map<String, dynamic>),
      typeFilter: json['type_filter'] == null
          ? null
          : LoyaltyEventTypeFilter.fromJson(
              json['type_filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyEventFilterToJson(LoyaltyEventFilter instance) =>
    <String, dynamic>{
      'date_time_filter': instance.dateTimeFilter?.toJson(),
      'location_filter': instance.locationFilter?.toJson(),
      'loyalty_account_filter': instance.loyaltyAccountFilter?.toJson(),
      'order_filter': instance.orderFilter?.toJson(),
      'type_filter': instance.typeFilter?.toJson(),
    };
