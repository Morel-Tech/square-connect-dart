// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_accepted_payment_methods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceAcceptedPaymentMethods _$InvoiceAcceptedPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    InvoiceAcceptedPaymentMethods(
      bankAccount: json['bank_account'] as bool?,
      buyNowPayLater: json['buy_now_pay_later'] as bool?,
      card: json['card'] as bool?,
      squareGiftCard: json['square_gift_card'] as bool?,
    );

Map<String, dynamic> _$InvoiceAcceptedPaymentMethodsToJson(
    InvoiceAcceptedPaymentMethods instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank_account', instance.bankAccount);
  writeNotNull('buy_now_pay_later', instance.buyNowPayLater);
  writeNotNull('card', instance.card);
  writeNotNull('square_gift_card', instance.squareGiftCard);
  return val;
}
