// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveSubscriptionResponse _$RetrieveSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveSubscriptionResponse(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveSubscriptionResponseToJson(
    RetrieveSubscriptionResponse instance) {
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
