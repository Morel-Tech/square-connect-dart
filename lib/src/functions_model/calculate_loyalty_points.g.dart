// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_loyalty_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateLoyaltyPointsRequest _$CalculateLoyaltyPointsRequestFromJson(
        Map<String, dynamic> json) =>
    CalculateLoyaltyPointsRequest(
      orderId: json['order_id'] as String?,
      transactionAmountMoney: json['transaction_amount_money'] == null
          ? null
          : Money.fromJson(
              json['transaction_amount_money'] as Map<String, dynamic>),
      loyaltyAccountId: json['loyalty_account_id'] as String?,
    );

Map<String, dynamic> _$CalculateLoyaltyPointsRequestToJson(
        CalculateLoyaltyPointsRequest instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'transaction_amount_money': instance.transactionAmountMoney?.toJson(),
      'loyalty_account_id': instance.loyaltyAccountId,
    };

CalculateLoyaltyPointsResponse _$CalculateLoyaltyPointsResponseFromJson(
        Map<String, dynamic> json) =>
    CalculateLoyaltyPointsResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      points: json['points'] as int?,
      promotionPoints: json['promotion_points'] as int?,
    );

Map<String, dynamic> _$CalculateLoyaltyPointsResponseToJson(
        CalculateLoyaltyPointsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'points': instance.points,
      'promotion_points': instance.promotionPoints,
    };
