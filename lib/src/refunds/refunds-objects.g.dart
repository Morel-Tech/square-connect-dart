// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refunds-objects.dart';

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
      status: _$enumDecode(_$PaymentRefundStatusEnumMap, json['status']),
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
      'status': _$PaymentRefundStatusEnumMap[instance.status],
      'processing_fee_money': instance.processingFeeMoney.toJson(),
      'additional_recipients':
          instance.additionalRecipients.map((e) => e.toJson()).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PaymentRefundStatusEnumMap = {
  PaymentRefundStatus.pending: 'PENDING',
  PaymentRefundStatus.approved: 'APPROVED',
  PaymentRefundStatus.rejected: 'REJECTED',
  PaymentRefundStatus.failed: 'FAILED',
};

PaymentRefund _$PaymentRefundFromJson(Map<String, dynamic> json) =>
    PaymentRefund(
      id: json['id'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appFeeMoney:
          Money.fromJson(json['app_fee_money'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      locationId: json['location_id'] as String,
      orderId: json['order_id'] as String,
      paymentId: json['payment_id'] as String,
      processingFee: (json['processing_fee'] as List<dynamic>)
          .map((e) => ProcessingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      reason: json['reason'] as String,
      status: _$enumDecode(_$PaymentRefundStatusEnumMap, json['status']),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PaymentRefundToJson(PaymentRefund instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount_money': instance.amountMoney.toJson(),
      'app_fee_money': instance.appFeeMoney.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'location_id': instance.locationId,
      'order_id': instance.orderId,
      'payment_id': instance.paymentId,
      'processing_fee': instance.processingFee.map((e) => e.toJson()).toList(),
      'reason': instance.reason,
      'status': _$PaymentRefundStatusEnumMap[instance.status],
      'updated_at': instance.updatedAt.toIso8601String(),
    };