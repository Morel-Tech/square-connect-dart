// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      id: json['id'] as String?,
      amountMoney: json['amountMoney'] == null
          ? null
          : Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: json['appFeeMoney'] == null
          ? null
          : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      approvedMoney: json['approvedMoney'] == null
          ? null
          : Money.fromJson(json['approvedMoney'] as Map<String, dynamic>),
      bankAccountDetails: json['bankAccountDetails'] == null
          ? null
          : BankAccountPaymentDetails.fromJson(
              json['bankAccountDetails'] as Map<String, dynamic>),
      billingAddress: json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      buyerEmailAddress: json['buyerEmailAddress'] as String?,
      capabilities: (json['capabilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cardDetails: json['cardDetails'] == null
          ? null
          : CardPaymentDetails.fromJson(
              json['cardDetails'] as Map<String, dynamic>),
      cashDetails: json['cashDetails'] == null
          ? null
          : CashPaymentDetails.fromJson(
              json['cashDetails'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      customerId: json['customerId'] as String?,
      delayAction: json['delayAction'] as String?,
      delayedUntil: json['delayedUntil'] as String?,
      employeeId: json['employeeId'] as String?,
      externalDetails: json['externalDetails'] == null
          ? null
          : ExternalPaymentDetails.fromJson(
              json['externalDetails'] as Map<String, dynamic>),
      locationId: json['locationId'] as String?,
      note: json['note'] as String?,
      orderId: json['orderId'] as String?,
      processingFee: (json['processingFee'] as List<dynamic>?)
          ?.map((e) => ProcessingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      receiptNumber: json['receiptNumber'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      referenceId: json['referenceId'] as String?,
      refundIds: (json['refundIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      refundedMoney: json['refundedMoney'] == null
          ? null
          : Money.fromJson(json['refundedMoney'] as Map<String, dynamic>),
      riskEvaluation: json['riskEvaluation'] == null
          ? null
          : RiskEvaluation.fromJson(
              json['riskEvaluation'] as Map<String, dynamic>),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      sourceType: json['sourceType'] as String?,
      statementDescriptionIdentifier:
          json['statementDescriptionIdentifier'] as String?,
      status: json['status'] as String?,
      tipMoney: json['tipMoney'] == null
          ? null
          : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: json['totalMoney'] == null
          ? null
          : Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String?,
      versionToken: json['versionToken'] as String?,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'approvedMoney': instance.approvedMoney,
      'bankAccountDetails': instance.bankAccountDetails,
      'billingAddress': instance.billingAddress,
      'buyerEmailAddress': instance.buyerEmailAddress,
      'capabilities': instance.capabilities,
      'cardDetails': instance.cardDetails,
      'cashDetails': instance.cashDetails,
      'createdAt': instance.createdAt,
      'customerId': instance.customerId,
      'delayAction': instance.delayAction,
      'delayedUntil': instance.delayedUntil,
      'employeeId': instance.employeeId,
      'externalDetails': instance.externalDetails,
      'locationId': instance.locationId,
      'note': instance.note,
      'orderId': instance.orderId,
      'processingFee': instance.processingFee,
      'receiptNumber': instance.receiptNumber,
      'receiptUrl': instance.receiptUrl,
      'referenceId': instance.referenceId,
      'refundIds': instance.refundIds,
      'refundedMoney': instance.refundedMoney,
      'riskEvaluation': instance.riskEvaluation,
      'shippingAddress': instance.shippingAddress,
      'sourceType': instance.sourceType,
      'statementDescriptionIdentifier': instance.statementDescriptionIdentifier,
      'status': instance.status,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt,
      'versionToken': instance.versionToken,
    };
