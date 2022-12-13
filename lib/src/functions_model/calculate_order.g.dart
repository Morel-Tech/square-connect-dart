// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateOrderRequest _$CalculateOrderRequestFromJson(
        Map<String, dynamic> json) =>
    CalculateOrderRequest(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
      proposedRewards: (json['proposed_rewards'] as List<dynamic>?)
          ?.map((e) => OrderReward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CalculateOrderRequestToJson(
        CalculateOrderRequest instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
      'proposed_rewards':
          instance.proposedRewards?.map((e) => e.toJson()).toList(),
    };

CalculateOrderResponse _$CalculateOrderResponseFromJson(
        Map<String, dynamic> json) =>
    CalculateOrderResponse(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CalculateOrderResponseToJson(
        CalculateOrderResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'order': instance.order?.toJson(),
    };
