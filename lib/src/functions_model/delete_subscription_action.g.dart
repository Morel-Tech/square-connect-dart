// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_subscription_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteSubscriptionActionResponse _$DeleteSubscriptionActionResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteSubscriptionActionResponse(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteSubscriptionActionResponseToJson(
        DeleteSubscriptionActionResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
    };
