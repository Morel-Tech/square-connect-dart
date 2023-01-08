// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveOrderResponse _$RetrieveOrderResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveOrderResponse(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveOrderResponseToJson(
    RetrieveOrderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['order'] = instance.order.toJson();
  return val;
}
