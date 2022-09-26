// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_type_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventTypeFilter _$LoyaltyEventTypeFilterFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventTypeFilter(
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LoyaltyEventTypeFilterToJson(
        LoyaltyEventTypeFilter instance) =>
    <String, dynamic>{
      'types': instance.types,
    };
