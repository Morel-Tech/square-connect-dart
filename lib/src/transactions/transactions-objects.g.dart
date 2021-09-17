// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      tenders: (json['tenders'] as List<dynamic>)
          .map((e) => Tender.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: (json['refunds'] as List<dynamic>)
          .map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceId: json['referenceId'] as String,
      product: _$enumDecode(_$TransactionProductEnumMap, json['product']),
      clientId: json['clientId'] as String,
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      orderId: json['orderId'] as String,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'createdAt': instance.createdAt.toIso8601String(),
      'tenders': instance.tenders,
      'refunds': instance.refunds,
      'referenceId': instance.referenceId,
      'product': _$TransactionProductEnumMap[instance.product],
      'clientId': instance.clientId,
      'shippingAddress': instance.shippingAddress,
      'orderId': instance.orderId,
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

const _$TransactionProductEnumMap = {
  TransactionProduct.register: 'REGISTER',
  TransactionProduct.externalApi: 'EXTERNAL_API',
  TransactionProduct.billing: 'BILLING',
  TransactionProduct.appointments: 'APPOINTMENTS',
  TransactionProduct.invoices: 'INVOICES',
  TransactionProduct.onlineStore: 'ONLINE_STORE',
  TransactionProduct.payroll: 'PAYROLL',
  TransactionProduct.other: 'OTHER',
};
