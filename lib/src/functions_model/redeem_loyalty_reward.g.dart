// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemLoyaltyRewardRequest _$RedeemLoyaltyRewardRequestFromJson(
        Map<String, dynamic> json) =>
    RedeemLoyaltyRewardRequest(
      idempotenceKey: json['idempotence_key'] as String,
      locationId: json['location_id'] as String,
    );

Map<String, dynamic> _$RedeemLoyaltyRewardRequestToJson(
        RedeemLoyaltyRewardRequest instance) =>
    <String, dynamic>{
      'idempotence_key': instance.idempotenceKey,
      'location_id': instance.locationId,
    };

RedeemLoyaltyRewardResponse _$RedeemLoyaltyRewardResponseFromJson(
        Map<String, dynamic> json) =>
    RedeemLoyaltyRewardResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: json['event'] == null
          ? null
          : LoyaltyEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RedeemLoyaltyRewardResponseToJson(
        RedeemLoyaltyRewardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'event': instance.event?.toJson(),
    };
