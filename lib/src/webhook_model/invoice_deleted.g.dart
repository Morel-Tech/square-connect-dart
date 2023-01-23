// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_deleted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceDeletedEvent _$InvoiceDeletedEventFromJson(Map<String, dynamic> json) =>
    InvoiceDeletedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: InvoiceDeletedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceDeletedEventToJson(
        InvoiceDeletedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

InvoiceDeletedSquareEventData _$InvoiceDeletedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    InvoiceDeletedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$InvoiceDeletedSquareEventDataToJson(
        InvoiceDeletedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'deleted': instance.deleted,
    };
