// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as String,
      locationId: json['location_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      tenders: (json['tenders'] as List<dynamic>)
          .map((e) => Tender.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: (json['refunds'] as List<dynamic>)
          .map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceId: json['reference_id'] as String,
      product: _$enumDecode(_$TransactionProductEnumMap, json['product']),
      clientId: json['client_id'] as String,
      shippingAddress:
          Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      orderId: json['order_id'] as String,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'created_at': instance.createdAt.toIso8601String(),
      'tenders': instance.tenders.map((e) => e.toJson()).toList(),
      'refunds': instance.refunds.map((e) => e.toJson()).toList(),
      'reference_id': instance.referenceId,
      'product': _$TransactionProductEnumMap[instance.product],
      'client_id': instance.clientId,
      'shipping_address': instance.shippingAddress.toJson(),
      'order_id': instance.orderId,
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
