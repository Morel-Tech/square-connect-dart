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

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'amount_money': instance.amountMoney?.toJson(),
      'app_fee_money': instance.appFeeMoney?.toJson(),
      'approved_money': instance.approvedMoney?.toJson(),
      'bank_account_details': instance.bankAccountDetails?.toJson(),
      'billing_address': instance.billingAddress?.toJson(),
      'buyer_email_address': instance.buyerEmailAddress,
      'capabilities': instance.capabilities,
      'card_details': instance.cardDetails?.toJson(),
      'cash_details': instance.cashDetails?.toJson(),
      'created_at': instance.createdAt,
      'customer_id': instance.customerId,
      'delay_action': instance.delayAction,
      'delay_duration': instance.delayDuration,
      'delayed_until': instance.delayedUntil,
      'employee_id': instance.employeeId,
      'external_details': instance.externalDetails?.toJson(),
      'location_id': instance.locationId,
      'note': instance.note,
      'order_id': instance.orderId,
      'processing_fee': instance.processingFee?.map((e) => e.toJson()).toList(),
      'receipt_number': instance.receiptNumber,
      'receipt_url': instance.receiptUrl,
      'reference_id': instance.referenceId,
      'refund_ids': instance.refundIds,
      'refunded_money': instance.refundedMoney?.toJson(),
      'risk_evaluation': instance.riskEvaluation?.toJson(),
      'shipping_address': instance.shippingAddress?.toJson(),
      'source_type': instance.sourceType,
      'statement_description_identifier':
          instance.statementDescriptionIdentifier,
      'status': instance.status,
      'tip_money': instance.tipMoney?.toJson(),
      'total_money': instance.totalMoney?.toJson(),
      'updated_at': instance.updatedAt,
      'version_token': instance.versionToken,
    };
