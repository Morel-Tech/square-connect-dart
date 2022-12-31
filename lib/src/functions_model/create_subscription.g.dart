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
        CreateSubscriptionRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'location_id': instance.locationId,
      'plan_id': instance.planId,
      'customer_id': instance.customerId,
      'start_date': instance.startDate,
      'canceled_date': instance.canceledDate,
      'tax_percentage': instance.taxPercentage,
      'price_override_money': instance.priceOverrideMoney?.toJson(),
      'card_id': instance.cardId,
      'timezone': instance.timezone,
      'source': instance.source?.toJson(),
    };

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
        CreateSubscriptionResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
    };
