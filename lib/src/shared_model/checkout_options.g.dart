// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutOptions _$CheckoutOptionsFromJson(Map<String, dynamic> json) =>
    CheckoutOptions(
      acceptedPaymentMethods: json['accepted_payment_methods'] == null
          ? null
          : AcceptedPaymentMethods.fromJson(
              json['accepted_payment_methods'] as Map<String, dynamic>),
      allowTipping: json['allow_tipping'] as bool?,
      askForShippingAddress: json['ask_for_shipping_address'] as bool?,
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
          .toList(),
      merchantSupportEmail: json['merchant_support_email'] as String?,
      redirectUrl: json['redirect_url'] as String?,
      subscriptionPlanId: json['subscription_plan_id'] as String?,
    );

Map<String, dynamic> _$CheckoutOptionsToJson(CheckoutOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'accepted_payment_methods', instance.acceptedPaymentMethods?.toJson());
  writeNotNull('allow_tipping', instance.allowTipping);
  writeNotNull('ask_for_shipping_address', instance.askForShippingAddress);
  writeNotNull(
      'custom_fields', instance.customFields?.map((e) => e.toJson()).toList());
  writeNotNull('merchant_support_email', instance.merchantSupportEmail);
  writeNotNull('redirect_url', instance.redirectUrl);
  writeNotNull('subscription_plan_id', instance.subscriptionPlanId);
  return val;
}
