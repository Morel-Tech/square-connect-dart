// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjust_loyalty_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdjustLoyaltyPointsRequest _$AdjustLoyaltyPointsRequestFromJson(
        Map<String, dynamic> json) =>
    AdjustLoyaltyPointsRequest(
      idempotencyKey: json['idempotency_key'] as String,
      adjustPoints: LoyaltyEventAdjustPoints.fromJson(
          json['adjust_points'] as Map<String, dynamic>),
      allowNegativeBalance: json['allow_negative_balance'] as bool?,
    );

Map<String, dynamic> _$AdjustLoyaltyPointsRequestToJson(
        AdjustLoyaltyPointsRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'adjust_points': instance.adjustPoints.toJson(),
      'allow_negative_balance': instance.allowNegativeBalance,
    };

AdjustLoyaltyPointsResponse _$AdjustLoyaltyPointsResponseFromJson(
        Map<String, dynamic> json) =>
    AdjustLoyaltyPointsResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: json['event'] == null
          ? null
          : LoyaltyEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdjustLoyaltyPointsResponseToJson(
        AdjustLoyaltyPointsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'event': instance.event?.toJson(),
    };
