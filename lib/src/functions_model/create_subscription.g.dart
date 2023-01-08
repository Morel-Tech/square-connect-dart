// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSubscriptionRequest _$CreateSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      locationId: json['location_id'] as String,
      planId: json['plan_id'] as String,
      customerId: json['customer_id'] as String,
      startDate: json['start_date'] as String?,
      canceledDate: json['canceled_date'] as String?,
      taxPercentage: json['tax_percentage'] as String?,
      priceOverrideMoney: json['price_override_money'] == null
          ? null
          : Money.fromJson(
              json['price_override_money'] as Map<String, dynamic>),
      cardId: json['card_id'] as String?,
      timezone: json['timezone'] as String?,
      source: json['source'] == null
          ? null
          : SubscriptionSource.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateSubscriptionRequestToJson(
    CreateSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['location_id'] = instance.locationId;
  val['plan_id'] = instance.planId;
  val['customer_id'] = instance.customerId;
  writeNotNull('start_date', instance.startDate);
  writeNotNull('canceled_date', instance.canceledDate);
  writeNotNull('tax_percentage', instance.taxPercentage);
  writeNotNull('price_override_money', instance.priceOverrideMoney?.toJson());
  writeNotNull('card_id', instance.cardId);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('source', instance.source?.toJson());
  return val;
}

CreateSubscriptionResponse _$CreateSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionResponse(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateSubscriptionResponseToJson(
    CreateSubscriptionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('subscription', instance.subscription?.toJson());
  return val;
}
