// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_version_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogVersionUpdatedEvent _$CatalogVersionUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    CatalogVersionUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: CatalogVersionUpdatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogVersionUpdatedEventToJson(
        CatalogVersionUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CatalogVersionUpdatedWebhookData _$CatalogVersionUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CatalogVersionUpdatedWebhookData(
      id: json['id'] as String,
      object: CatalogVersionUpdatedWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$CatalogVersionUpdatedWebhookDataToJson(
        CatalogVersionUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object.toJson(),
      'type': instance.type,
    };

CatalogVersionUpdatedWebhookObject _$CatalogVersionUpdatedWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    CatalogVersionUpdatedWebhookObject(
      catalogVersion: CatalogVersionUpdatedWebhookCatalogVersion.fromJson(
          json['catalog_version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogVersionUpdatedWebhookObjectToJson(
        CatalogVersionUpdatedWebhookObject instance) =>
    <String, dynamic>{
      'catalog_version': instance.catalogVersion.toJson(),
    };

CatalogVersionUpdatedWebhookCatalogVersion
    _$CatalogVersionUpdatedWebhookCatalogVersionFromJson(
            Map<String, dynamic> json) =>
        CatalogVersionUpdatedWebhookCatalogVersion(
          updatedAt: DateTime.parse(json['updated_at'] as String),
        );

Map<String, dynamic> _$CatalogVersionUpdatedWebhookCatalogVersionToJson(
        CatalogVersionUpdatedWebhookCatalogVersion instance) =>
    <String, dynamic>{
      'updated_at': instance.updatedAt.toIso8601String(),
    };
