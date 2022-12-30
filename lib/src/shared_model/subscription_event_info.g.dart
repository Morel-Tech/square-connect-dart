// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_event_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionEventInfo _$SubscriptionEventInfoFromJson(
        Map<String, dynamic> json) =>
    SubscriptionEventInfo(
      code:
          $enumDecodeNullable(_$SubscriptionEventInfoCodeEnumMap, json['code']),
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$SubscriptionEventInfoToJson(
        SubscriptionEventInfo instance) =>
    <String, dynamic>{
      'code': _$SubscriptionEventInfoCodeEnumMap[instance.code],
      'detail': instance.detail,
    };

const _$SubscriptionEventInfoCodeEnumMap = {
  SubscriptionEventInfoCode.locationNotActive: 'LOCATION_NOT_ACTIVE',
  SubscriptionEventInfoCode.locationCannotAcceptPayment:
      'LOCATION_CANNOT_ACCEPT_PAYMENT',
  SubscriptionEventInfoCode.customerDeleted: 'CUSTOMER_DELETED',
  SubscriptionEventInfoCode.customerNoEmail: 'CUSTOMER_NO_EMAIL',
  SubscriptionEventInfoCode.customerNoName: 'CUSTOMER_NO_NAME',
  SubscriptionEventInfoCode.userProvided: 'USER_PROVIDED',
};
