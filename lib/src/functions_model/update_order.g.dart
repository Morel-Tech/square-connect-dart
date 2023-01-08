// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderResponse _$UpdateOrderResponseFromJson(Map<String, dynamic> json) =>
    UpdateOrderResponse(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateOrderResponseToJson(UpdateOrderResponse instance) {
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

UpdateOrderRequest _$UpdateOrderRequestFromJson(Map<String, dynamic> json) =>
    UpdateOrderRequest(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      fieldsToClear: (json['fields_to_clear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      idempotencyKey: json['idempotency_key'] as String?,
    );

Map<String, dynamic> _$UpdateOrderRequestToJson(UpdateOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('fields_to_clear', instance.fieldsToClear);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  return val;
}
