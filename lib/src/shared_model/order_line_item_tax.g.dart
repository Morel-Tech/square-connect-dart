// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemTax _$OrderLineItemTaxFromJson(Map<String, dynamic> json) =>
    OrderLineItemTax(
      uid: json['uid'] as String,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
      type: _$enumDecodeNullable(_$OrderLineItemTaxTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num?)?.toDouble(),
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      scope:
          _$enumDecodeNullable(_$OrderLineItemTaxScopeEnumMap, json['scope']),
      autoApplied: json['auto_applied'] as bool?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$OrderLineItemTaxToJson(OrderLineItemTax instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemTaxTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'metadata': instance.metadata,
      'applied_money': instance.appliedMoney?.toJson(),
      'scope': _$OrderLineItemTaxScopeEnumMap[instance.scope],
      'auto_applied': instance.autoApplied,
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$OrderLineItemTaxTypeEnumMap = {
  OrderLineItemTaxType.unknownTax: 'UNKNOWN_TAX',
  OrderLineItemTaxType.additive: 'ADDITIVE',
  OrderLineItemTaxType.inclusive: 'INCLUSIVE',
};

const _$OrderLineItemTaxScopeEnumMap = {
  OrderLineItemTaxScope.otherTaxScope: 'OTHER_TAX_SCOPE',
  OrderLineItemTaxScope.lineItem: 'LINE_ITEM',
  OrderLineItemTaxScope.order: 'ORDER',
};
