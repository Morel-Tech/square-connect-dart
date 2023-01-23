// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_scheduled_charge_failed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceScheduledChargeFailedEvent _$InvoiceScheduledChargeFailedEventFromJson(
        Map<String, dynamic> json) =>
    InvoiceScheduledChargeFailedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoiceScheduledChargeFailedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceScheduledChargeFailedEventToJson(
        InvoiceScheduledChargeFailedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoiceScheduledChargeFailedSquareEventData
    _$InvoiceScheduledChargeFailedSquareEventDataFromJson(
            Map<String, dynamic> json) =>
        InvoiceScheduledChargeFailedSquareEventData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: InvoiceScheduledChargeFailedSquareEventObject.fromJson(
              json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$InvoiceScheduledChargeFailedSquareEventDataToJson(
        InvoiceScheduledChargeFailedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

InvoiceScheduledChargeFailedSquareEventObject
    _$InvoiceScheduledChargeFailedSquareEventObjectFromJson(
            Map<String, dynamic> json) =>
        InvoiceScheduledChargeFailedSquareEventObject(
          invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$InvoiceScheduledChargeFailedSquareEventObjectToJson(
        InvoiceScheduledChargeFailedSquareEventObject instance) =>
    <String, dynamic>{
      'invoice': instance.invoice.toJson(),
    };
