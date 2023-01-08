// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      id: json['id'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appFeeMoney: json['app_fee_money'] == null
          ? null
          : Money.fromJson(json['app_fee_money'] as Map<String, dynamic>),
      approvedMoney: json['approved_money'] == null
          ? null
          : Money.fromJson(json['approved_money'] as Map<String, dynamic>),
      bankAccountDetails: json['bank_account_details'] == null
          ? null
          : BankAccountPaymentDetails.fromJson(
              json['bank_account_details'] as Map<String, dynamic>),
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      buyerEmailAddress: json['buyer_email_address'] as String?,
      capabilities: (json['capabilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cardDetails: json['card_details'] == null
          ? null
          : CardPaymentDetails.fromJson(
              json['card_details'] as Map<String, dynamic>),
      cashDetails: json['cash_details'] == null
          ? null
          : CashPaymentDetails.fromJson(
              json['cash_details'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      customerId: json['customer_id'] as String?,
      delayAction: json['delay_action'] as String?,
      delayedUntil: json['delayed_until'] as String?,
      employeeId: json['employee_id'] as String?,
      externalDetails: json['external_details'] == null
          ? null
          : ExternalPaymentDetails.fromJson(
              json['external_details'] as Map<String, dynamic>),
      locationId: json['location_id'] as String?,
      note: json['note'] as String?,
      orderId: json['order_id'] as String?,
      processingFee: (json['processing_fee'] as List<dynamic>?)
          ?.map((e) => ProcessingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      receiptNumber: json['receipt_number'] as String?,
      receiptUrl: json['receipt_url'] as String?,
      referenceId: json['reference_id'] as String?,
      refundIds: (json['refund_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      refundedMoney: json['refunded_money'] == null
          ? null
          : Money.fromJson(json['refunded_money'] as Map<String, dynamic>),
      riskEvaluation: json['risk_evaluation'] == null
          ? null
          : RiskEvaluation.fromJson(
              json['risk_evaluation'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      sourceType: json['source_type'] as String?,
      statementDescriptionIdentifier:
          json['statement_description_identifier'] as String?,
      status: json['status'] as String?,
      tipMoney: json['tip_money'] == null
          ? null
          : Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] as String?,
      versionToken: json['version_token'] as String?,
      delayDuration: json['delay_duration'] as String?,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('app_fee_money', instance.appFeeMoney?.toJson());
  writeNotNull('approved_money', instance.approvedMoney?.toJson());
  writeNotNull('bank_account_details', instance.bankAccountDetails?.toJson());
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('buyer_email_address', instance.buyerEmailAddress);
  writeNotNull('capabilities', instance.capabilities);
  writeNotNull('card_details', instance.cardDetails?.toJson());
  writeNotNull('cash_details', instance.cashDetails?.toJson());
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('delay_action', instance.delayAction);
  writeNotNull('delay_duration', instance.delayDuration);
  writeNotNull('delayed_until', instance.delayedUntil);
  writeNotNull('employee_id', instance.employeeId);
  writeNotNull('external_details', instance.externalDetails?.toJson());
  writeNotNull('location_id', instance.locationId);
  writeNotNull('note', instance.note);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('processing_fee',
      instance.processingFee?.map((e) => e.toJson()).toList());
  writeNotNull('receipt_number', instance.receiptNumber);
  writeNotNull('receipt_url', instance.receiptUrl);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('refund_ids', instance.refundIds);
  writeNotNull('refunded_money', instance.refundedMoney?.toJson());
  writeNotNull('risk_evaluation', instance.riskEvaluation?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('source_type', instance.sourceType);
  writeNotNull('statement_description_identifier',
      instance.statementDescriptionIdentifier);
  writeNotNull('status', instance.status);
  writeNotNull('tip_money', instance.tipMoney?.toJson());
  writeNotNull('total_money', instance.totalMoney?.toJson());
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version_token', instance.versionToken);
  return val;
}
