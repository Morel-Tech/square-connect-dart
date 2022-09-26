// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_location_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventLocationFilter _$LoyaltyEventLocationFilterFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventLocationFilter(
      locationIds: (json['location_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LoyaltyEventLocationFilterToJson(
        LoyaltyEventLocationFilter instance) =>
    <String, dynamic>{
      'location_ids': instance.locationIds,
    };
