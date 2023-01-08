// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnTax _$OrderReturnTaxFromJson(Map<String, dynamic> json) =>
    OrderReturnTax(
      id: json['id'] as String?,
      sourceTaxId: json['source_tax_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$OrderLineItemTaxTypeEnumMap, json['type']),
      percentage: json['percentage'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      scope: $enumDecodeNullable(_$OrderLineItemTaxScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderReturnTaxToJson(OrderReturnTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('source_tax_id', instance.sourceTaxId);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$OrderLineItemTaxTypeEnumMap[instance.type]);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('applied_money', instance.appliedMoney?.toJson());
  writeNotNull('scope', _$OrderLineItemTaxScopeEnumMap[instance.scope]);
  return val;
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
