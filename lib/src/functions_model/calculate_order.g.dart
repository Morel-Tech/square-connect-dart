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
    CalculateOrderRequest instance) {
  final val = <String, dynamic>{
    'order': instance.order.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('proposed_rewards',
      instance.proposedRewards?.map((e) => e.toJson()).toList());
  return val;
}

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
    CalculateOrderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('order', instance.order?.toJson());
  return val;
}
