// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      id: json['id'] as String,
      locationId: json['location_id'] as String,
      transactionId: json['transaction_id'] as String,
      tenderId: json['tender_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      reason: json['reason'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      status: $enumDecode(_$PaymentRefundStatusEnumMap, json['status']),
      processingFeeMoney:
          Money.fromJson(json['processing_fee_money'] as Map<String, dynamic>),
      additionalRecipients: (json['additional_recipients'] as List<dynamic>)
          .map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'transaction_id': instance.transactionId,
      'tender_id': instance.tenderId,
      'created_at': instance.createdAt.toIso8601String(),
      'reason': instance.reason,
      'amount_money': instance.amountMoney.toJson(),
      'status': _$PaymentRefundStatusEnumMap[instance.status]!,
      'processing_fee_money': instance.processingFeeMoney.toJson(),
      'additional_recipients':
          instance.additionalRecipients.map((e) => e.toJson()).toList(),
    };

const _$PaymentRefundStatusEnumMap = {
  PaymentRefundStatus.pending: 'PENDING',
  PaymentRefundStatus.approved: 'APPROVED',
  PaymentRefundStatus.rejected: 'REJECTED',
  PaymentRefundStatus.failed: 'FAILED',
};
