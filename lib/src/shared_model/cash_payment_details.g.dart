// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_payment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashPaymentDetails _$CashPaymentDetailsFromJson(Map<String, dynamic> json) =>
    CashPaymentDetails(
      buyerSuppliedMoney:
          Money.fromJson(json['buyerSuppliedMoney'] as Map<String, dynamic>),
      changeBackMoney: json['changeBackMoney'] == null
          ? null
          : Money.fromJson(json['changeBackMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CashPaymentDetailsToJson(CashPaymentDetails instance) =>
    <String, dynamic>{
      'buyerSuppliedMoney': instance.buyerSuppliedMoney,
      'changeBackMoney': instance.changeBackMoney,
    };
