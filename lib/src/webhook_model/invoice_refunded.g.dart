// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_refunded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceRefundedEvent _$InvoiceRefundedEventFromJson(
        Map<String, dynamic> json) =>
    InvoiceRefundedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoiceRefundedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceRefundedEventToJson(
        InvoiceRefundedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoiceRefundedSquareEventData _$InvoiceRefundedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoiceRefundedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: InvoiceRefundedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceRefundedSquareEventDataToJson(
        InvoiceRefundedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoiceRefundedSquareEventObject _$InvoiceRefundedSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    InvoiceRefundedSquareEventObject(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceRefundedSquareEventObjectToJson(
        InvoiceRefundedSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
