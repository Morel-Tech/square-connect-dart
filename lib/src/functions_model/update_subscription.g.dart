// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSubscriptionRequest _$UpdateSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSubscriptionRequest(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateSubscriptionRequestToJson(
        UpdateSubscriptionRequest instance) =>
    <String, dynamic>{
      'subscription': instance.subscription?.toJson(),
    };

UpdateSubscriptionResponse _$UpdateSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateSubscriptionResponse(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateSubscriptionResponseToJson(
        UpdateSubscriptionResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
    };
