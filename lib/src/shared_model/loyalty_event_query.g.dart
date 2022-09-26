// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventQuery _$LoyaltyEventQueryFromJson(Map<String, dynamic> json) =>
    LoyaltyEventQuery(
      filter: json['filter'] == null
          ? null
          : LoyaltyEventFilter.fromJson(json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyEventQueryToJson(LoyaltyEventQuery instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
    };
