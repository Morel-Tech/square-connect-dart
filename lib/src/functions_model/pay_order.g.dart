// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayOrderRequest _$PayOrderRequestFromJson(Map<String, dynamic> json) =>
    PayOrderRequest(
      idempontencyKey: json['idempontency_key'] as String,
      itemVersion: json['item_version'] as int?,
      paymentIds: (json['payment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PayOrderRequestToJson(PayOrderRequest instance) =>
    <String, dynamic>{
      'idempontency_key': instance.idempontencyKey,
      'item_version': instance.itemVersion,
      'payment_ids': instance.paymentIds,
    };

PayOrderResponse _$PayOrderResponseFromJson(Map<String, dynamic> json) =>
    PayOrderResponse(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PayOrderResponseToJson(PayOrderResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'order': instance.order?.toJson(),
    };
