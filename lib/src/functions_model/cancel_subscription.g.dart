// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelSubscriptionResponse _$CancelSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    CancelSubscriptionResponse(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => SubscriptionAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CancelSubscriptionResponseToJson(
        CancelSubscriptionResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };
