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
        RetrieveOrderResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'order': instance.order.toJson(),
    };
