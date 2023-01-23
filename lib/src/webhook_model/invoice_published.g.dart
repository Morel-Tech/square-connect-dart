// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_published.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicePublishedEvent _$InvoicePublishedEventFromJson(
        Map<String, dynamic> json) =>
    InvoicePublishedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoicePublishedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoicePublishedEventToJson(
        InvoicePublishedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoicePublishedSquareEventData _$InvoicePublishedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoicePublishedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: InvoicePublishedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoicePublishedSquareEventDataToJson(
        InvoicePublishedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoicePublishedSquareEventObject _$InvoicePublishedSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    InvoicePublishedSquareEventObject(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoicePublishedSquareEventObjectToJson(
        InvoicePublishedSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
