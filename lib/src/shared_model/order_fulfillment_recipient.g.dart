// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillmentRecipient _$OrderFulfillmentRecipientFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentRecipient(
      customerId: json['customer_id'] as String?,
      displayName: json['display_name'] as String?,
      emailAddress: json['email_address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFulfillmentRecipientToJson(
        OrderFulfillmentRecipient instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'display_name': instance.displayName,
      'email_address': instance.emailAddress,
      'phone_number': instance.phoneNumber,
      'address': instance.address?.toJson(),
    };
