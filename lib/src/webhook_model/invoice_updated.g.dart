// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceUpdatedEvent _$InvoiceUpdatedEventFromJson(Map<String, dynamic> json) =>
    InvoiceUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoiceUpdatedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceUpdatedEventToJson(
        InvoiceUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoiceUpdatedSquareEventData _$InvoiceUpdatedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoiceUpdatedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: InvoiceUpdatedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceUpdatedSquareEventDataToJson(
        InvoiceUpdatedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoiceUpdatedSquareEventObject _$InvoiceUpdatedSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    InvoiceUpdatedSquareEventObject(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceUpdatedSquareEventObjectToJson(
        InvoiceUpdatedSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
