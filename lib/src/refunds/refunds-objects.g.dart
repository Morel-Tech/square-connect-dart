// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refunds-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      transactionId: json['transactionId'] as String,
      tenderId: json['tenderId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      reason: json['reason'] as String,
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      status: _$enumDecode(_$PaymentRefundStatusEnumMap, json['status']),
      processingFeeMoney:
          Money.fromJson(json['processingFeeMoney'] as Map<String, dynamic>),
      additionalRecipients: (json['additionalRecipients'] as List<dynamic>)
          .map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'transactionId': instance.transactionId,
      'tenderId': instance.tenderId,
      'createdAt': instance.createdAt.toIso8601String(),
      'reason': instance.reason,
      'amountMoney': instance.amountMoney,
      'status': _$PaymentRefundStatusEnumMap[instance.status],
      'processingFeeMoney': instance.processingFeeMoney,
      'additionalRecipients': instance.additionalRecipients,
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
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      locationId: json['locationId'] as String,
      orderId: json['orderId'] as String,
      paymentId: json['paymentId'] as String,
      processingFee: (json['processingFee'] as List<dynamic>)
          .map((e) => ProcessingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      reason: json['reason'] as String,
      status: _$enumDecode(_$PaymentRefundStatusEnumMap, json['status']),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PaymentRefundToJson(PaymentRefund instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'createdAt': instance.createdAt.toIso8601String(),
      'locationId': instance.locationId,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'processingFee': instance.processingFee,
      'reason': instance.reason,
      'status': _$PaymentRefundStatusEnumMap[instance.status],
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
