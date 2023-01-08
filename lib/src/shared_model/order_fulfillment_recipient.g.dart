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
    OrderFulfillmentRecipient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_id', instance.customerId);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('address', instance.address?.toJson());
  return val;
}
