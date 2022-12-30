// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      id: json['id'] as String,
      locationId: json['location_id'] as String?,
      planId: json['plan_id'] as String?,
      customerId: json['customer_id'] as String?,
      startDate: json['start_date'] as String?,
      canceledDate: json['canceled_date'] as String?,
      chargedThroughDate: json['charged_through_date'] as String?,
      status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
      taxPercentage: json['tax_percentage'] as String?,
      invoiceIds: (json['invoice_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      priceOverrideMoney: json['price_override_money'] == null
          ? null
          : Money.fromJson(
              json['price_override_money'] as Map<String, dynamic>),
      version: json['version'] as int,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      cardId: json['card_id'] as String?,
      timezone: json['timezone'] as String?,
      source: json['source'] == null
          ? null
          : SubscriptionSource.fromJson(json['source'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => SubscriptionAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'plan_id': instance.planId,
      'customer_id': instance.customerId,
      'start_date': instance.startDate,
      'canceled_date': instance.canceledDate,
      'charged_through_date': instance.chargedThroughDate,
      'status': _$SubscriptionStatusEnumMap[instance.status],
      'tax_percentage': instance.taxPercentage,
      'invoice_ids': instance.invoiceIds,
      'price_override_money': instance.priceOverrideMoney?.toJson(),
      'version': instance.version,
      'created_at': instance.createdAt?.toIso8601String(),
      'card_id': instance.cardId,
      'timezone': instance.timezone,
      'source': instance.source?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.pending: 'PENDING',
  SubscriptionStatus.active: 'ACTIVE',
  SubscriptionStatus.canceled: 'CANCELED',
  SubscriptionStatus.deactivated: 'DEACTIVATED',
  SubscriptionStatus.paused: 'PAUSED',
};
