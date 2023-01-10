// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clone_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloneOrderRequest _$CloneOrderRequestFromJson(Map<String, dynamic> json) =>
    CloneOrderRequest(
      orderId: json['order_id'] as String,
      version: json['version'] as int?,
      idempotencyKey: json['idempotency_key'] as String?,
    );

Map<String, dynamic> _$CloneOrderRequestToJson(CloneOrderRequest instance) {
  final val = <String, dynamic>{
    'order_id': instance.orderId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  return val;
}

CloneOrderResponse _$CloneOrderResponseFromJson(Map<String, dynamic> json) =>
    CloneOrderResponse(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CloneOrderResponseToJson(CloneOrderResponse instance) {
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
