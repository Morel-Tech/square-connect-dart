// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_canceled.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceCanceledEvent _$InvoiceCanceledEventFromJson(
        Map<String, dynamic> json) =>
    InvoiceCanceledEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoiceCanceledSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCanceledEventToJson(
        InvoiceCanceledEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoiceCanceledSquareEventData _$InvoiceCanceledSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoiceCanceledSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: InvoiceCanceledSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCanceledSquareEventDataToJson(
        InvoiceCanceledSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoiceCanceledSquareEventObject _$InvoiceCanceledSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    InvoiceCanceledSquareEventObject(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCanceledSquareEventObjectToJson(
        InvoiceCanceledSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
