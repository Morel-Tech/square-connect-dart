// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_payment_methods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptedPaymentMethods _$AcceptedPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AcceptedPaymentMethods(
      afterpayClearpay: json['afterpay_clearpay'] as bool?,
      applePay: json['apple_pay'] as bool?,
      cashAppPay: json['cash_app_pay'] as bool?,
      googlePay: json['google_pay'] as bool?,
    );

Map<String, dynamic> _$AcceptedPaymentMethodsToJson(
        AcceptedPaymentMethods instance) =>
    <String, dynamic>{
      'afterpay_clearpay': instance.afterpayClearpay,
      'apple_pay': instance.applePay,
      'cash_app_pay': instance.cashAppPay,
      'google_pay': instance.googlePay,
    };
