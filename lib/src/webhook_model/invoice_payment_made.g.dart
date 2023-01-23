// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_payment_made.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicePaymentMadeEvent _$InvoicePaymentMadeEventFromJson(
        Map<String, dynamic> json) =>
    InvoicePaymentMadeEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoicePaymentMadeSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoicePaymentMadeEventToJson(
        InvoicePaymentMadeEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoicePaymentMadeSquareEventData _$InvoicePaymentMadeSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoicePaymentMadeSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: InvoicePaymentMadeSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoicePaymentMadeSquareEventDataToJson(
        InvoicePaymentMadeSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoicePaymentMadeSquareEventObject
    _$InvoicePaymentMadeSquareEventObjectFromJson(Map<String, dynamic> json) =>
        InvoicePaymentMadeSquareEventObject(
          invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$InvoicePaymentMadeSquareEventObjectToJson(
        InvoicePaymentMadeSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
