// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      id: json['id'] as String?,
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
      version: json['version'] as int?,
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

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('plan_id', instance.planId);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('start_date', instance.startDate);
  writeNotNull('canceled_date', instance.canceledDate);
  writeNotNull('charged_through_date', instance.chargedThroughDate);
  writeNotNull('status', _$SubscriptionStatusEnumMap[instance.status]);
  writeNotNull('tax_percentage', instance.taxPercentage);
  writeNotNull('invoice_ids', instance.invoiceIds);
  writeNotNull('price_override_money', instance.priceOverrideMoney?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('card_id', instance.cardId);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('actions', instance.actions?.map((e) => e.toJson()).toList());
  return val;
}

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.pending: 'PENDING',
  SubscriptionStatus.active: 'ACTIVE',
  SubscriptionStatus.canceled: 'CANCELED',
  SubscriptionStatus.deactivated: 'DEACTIVATED',
  SubscriptionStatus.paused: 'PAUSED',
};
