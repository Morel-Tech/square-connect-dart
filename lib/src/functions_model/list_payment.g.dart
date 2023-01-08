// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPaymentResponse _$ListPaymentResponseFromJson(Map<String, dynamic> json) =>
    ListPaymentResponse(
      paymentLinks: (json['payment_links'] as List<dynamic>)
          .map((e) => PaymentLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListPaymentResponseToJson(ListPaymentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['payment_links'] = instance.paymentLinks.map((e) => e.toJson()).toList();
  return val;
}
