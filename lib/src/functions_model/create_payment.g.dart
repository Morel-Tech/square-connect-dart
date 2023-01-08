// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentRequest _$CreatePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentRequest(
      sourceId: json['source_id'] as String,
      idempotencyKey: json['idempotency_key'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      tipMoney: json['tip_money'] == null
          ? null
          : Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      appFeeMoney: json['app_fee_money'] == null
          ? null
          : Money.fromJson(json['app_fee_money'] as Map<String, dynamic>),
      delayDuration: json['delay_duration'] as String?,
      autocomplete: json['autocomplete'] as bool?,
      orderId: json['order_id'] as String?,
      customerId: json['customer_id'] as String?,
      locationId: json['location_id'] as String?,
      teamMemberId: json['team_member_id'] as String?,
      referenceId: json['reference_id'] as String?,
      verificationToken: json['verification_token'] as String?,
      acceptPartialAuthorization: json['accept_partial_authorization'] as bool?,
      buyerEmailAddress: json['buyer_email_address'] as String?,
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      note: json['note'] as String?,
      statementDescriptionIdentifier:
          json['statement_description_identifier'] as String?,
    );

Map<String, dynamic> _$CreatePaymentRequestToJson(
    CreatePaymentRequest instance) {
  final val = <String, dynamic>{
    'source_id': instance.sourceId,
    'idempotency_key': instance.idempotencyKey,
    'amount_money': instance.amountMoney.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tip_money', instance.tipMoney?.toJson());
  writeNotNull('app_fee_money', instance.appFeeMoney?.toJson());
  writeNotNull('delay_duration', instance.delayDuration);
  writeNotNull('autocomplete', instance.autocomplete);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('team_member_id', instance.teamMemberId);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('verification_token', instance.verificationToken);
  writeNotNull(
      'accept_partial_authorization', instance.acceptPartialAuthorization);
  writeNotNull('buyer_email_address', instance.buyerEmailAddress);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('statement_description_identifier',
      instance.statementDescriptionIdentifier);
  return val;
}

CreatePaymentResponse _$CreatePaymentResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentResponse(
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatePaymentResponseToJson(
    CreatePaymentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('payment', instance.payment?.toJson());
  return val;
}
