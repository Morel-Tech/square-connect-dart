// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accumulate_loyalty_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccumulateLoyaltyPointsRequest _$AccumulateLoyaltyPointsRequestFromJson(
        Map<String, dynamic> json) =>
    AccumulateLoyaltyPointsRequest(
      accumulatePoints: LoyaltyEventAccumulatePoints.fromJson(
          json['accumulate_points'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String,
      locationId: json['location_id'] as String,
    );

Map<String, dynamic> _$AccumulateLoyaltyPointsRequestToJson(
        AccumulateLoyaltyPointsRequest instance) =>
    <String, dynamic>{
      'accumulate_points': instance.accumulatePoints.toJson(),
      'idempotency_key': instance.idempotencyKey,
      'location_id': instance.locationId,
    };

AccumulateLoyaltyPointsResponse _$AccumulateLoyaltyPointsResponseFromJson(
        Map<String, dynamic> json) =>
    AccumulateLoyaltyPointsResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => LoyaltyEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AccumulateLoyaltyPointsResponseToJson(
    AccumulateLoyaltyPointsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('events', instance.events?.map((e) => e.toJson()).toList());
  return val;
}
