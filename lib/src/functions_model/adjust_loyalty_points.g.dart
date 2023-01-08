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
    AdjustLoyaltyPointsRequest instance) {
  final val = <String, dynamic>{
    'idempotency_key': instance.idempotencyKey,
    'adjust_points': instance.adjustPoints.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allow_negative_balance', instance.allowNegativeBalance);
  return val;
}

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
    AdjustLoyaltyPointsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('event', instance.event?.toJson());
  return val;
}
