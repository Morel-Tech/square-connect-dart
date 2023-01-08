// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_payment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashPaymentDetails _$CashPaymentDetailsFromJson(Map<String, dynamic> json) =>
    CashPaymentDetails(
      buyerSuppliedMoney:
          Money.fromJson(json['buyer_supplied_money'] as Map<String, dynamic>),
      changeBackMoney: json['change_back_money'] == null
          ? null
          : Money.fromJson(json['change_back_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CashPaymentDetailsToJson(CashPaymentDetails instance) {
  final val = <String, dynamic>{
    'buyer_supplied_money': instance.buyerSuppliedMoney.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('change_back_money', instance.changeBackMoney?.toJson());
  return val;
}
