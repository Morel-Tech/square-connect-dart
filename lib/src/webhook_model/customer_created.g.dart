// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerCreatedEvent _$CustomerCreatedEventFromJson(
        Map<String, dynamic> json) =>
    CustomerCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: CustomerCreatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerCreatedEventToJson(
        CustomerCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CustomerCreatedWebhookData _$CustomerCreatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CustomerCreatedWebhookData(
      id: json['id'] as String,
      object: CustomerCreatedWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$CustomerCreatedWebhookDataToJson(
        CustomerCreatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

CustomerCreatedWebhookObject _$CustomerCreatedWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    CustomerCreatedWebhookObject(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      eventContext: json['event_context'] == null
          ? null
          : CustomerCreatedWebhookEventContext.fromJson(
              json['event_context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerCreatedWebhookObjectToJson(
    CustomerCreatedWebhookObject instance) {
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

CustomerCreatedWebhookEventContext _$CustomerCreatedWebhookEventContextFromJson(
        Map<String, dynamic> json) =>
    CustomerCreatedWebhookEventContext(
      merge: json['merge'] == null
          ? null
          : CustomerCreatedWebhookEventContextMerge.fromJson(
              json['merge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerCreatedWebhookEventContextToJson(
    CustomerCreatedWebhookEventContext instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merge', instance.merge?.toJson());
  return val;
}

CustomerCreatedWebhookEventContextMerge
    _$CustomerCreatedWebhookEventContextMergeFromJson(
            Map<String, dynamic> json) =>
        CustomerCreatedWebhookEventContextMerge(
          fromCustomerIds: (json['from_customer_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          toCustomerId: json['to_customer_id'] as String?,
        );

Map<String, dynamic> _$CustomerCreatedWebhookEventContextMergeToJson(
    CustomerCreatedWebhookEventContextMerge instance) {
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
