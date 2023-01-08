// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_deleted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDeletedEvent _$CustomerDeletedEventFromJson(
        Map<String, dynamic> json) =>
    CustomerDeletedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: CustomerDeletedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDeletedEventToJson(
        CustomerDeletedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CustomerDeletedWebhookData _$CustomerDeletedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CustomerDeletedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: CustomerDeletedWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDeletedWebhookDataToJson(
        CustomerDeletedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

CustomerDeletedWebhookObject _$CustomerDeletedWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    CustomerDeletedWebhookObject(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      eventContext: json['event_context'] == null
          ? null
          : CustomerDeletedWebhookEventContext.fromJson(
              json['event_context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDeletedWebhookObjectToJson(
    CustomerDeletedWebhookObject instance) {
  final val = <String, dynamic>{
    'customer': instance.customer.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('event_context', instance.eventContext?.toJson());
  return val;
}

CustomerDeletedWebhookEventContext _$CustomerDeletedWebhookEventContextFromJson(
        Map<String, dynamic> json) =>
    CustomerDeletedWebhookEventContext(
      merge: json['merge'] == null
          ? null
          : CustomerDeletedWebhookEventContextMerge.fromJson(
              json['merge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDeletedWebhookEventContextToJson(
    CustomerDeletedWebhookEventContext instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merge', instance.merge?.toJson());
  return val;
}

CustomerDeletedWebhookEventContextMerge
    _$CustomerDeletedWebhookEventContextMergeFromJson(
            Map<String, dynamic> json) =>
        CustomerDeletedWebhookEventContextMerge(
          fromCustomerIds: (json['from_customer_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          toCustomerId: json['to_customer_id'] as String?,
        );

Map<String, dynamic> _$CustomerDeletedWebhookEventContextMergeToJson(
    CustomerDeletedWebhookEventContextMerge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from_customer_ids', instance.fromCustomerIds);
  writeNotNull('to_customer_id', instance.toCustomerId);
  return val;
}
