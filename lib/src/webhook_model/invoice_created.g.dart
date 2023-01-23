// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceCreatedEvent _$InvoiceCreatedEventFromJson(Map<String, dynamic> json) =>
    InvoiceCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoiceCreatedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCreatedEventToJson(
        InvoiceCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoiceCreatedSquareEventData _$InvoiceCreatedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoiceCreatedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: InvoiceCreatedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCreatedSquareEventDataToJson(
        InvoiceCreatedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoiceCreatedSquareEventObject _$InvoiceCreatedSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    InvoiceCreatedSquareEventObject(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCreatedSquareEventObjectToJson(
        InvoiceCreatedSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
