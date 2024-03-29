// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogDiscount _$CatalogDiscountFromJson(Map<String, dynamic> json) =>
    CatalogDiscount(
      name: json['name'] as String?,
      discountType: $enumDecodeNullable(
          _$CatalogDiscountTypeEnumMap, json['discount_type']),
      percentage: json['percentage'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      pinRequired: json['pin_required'] as bool?,
      labelColor: json['label_color'] as String?,
    );

Map<String, dynamic> _$CatalogDiscountToJson(CatalogDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull(
      'discount_type', _$CatalogDiscountTypeEnumMap[instance.discountType]);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('pin_required', instance.pinRequired);
  writeNotNull('label_color', instance.labelColor);
  return val;
}

const _$CatalogDiscountTypeEnumMap = {
  CatalogDiscountType.fixedPercentage: 'FIXED_PERCENTAGE',
  CatalogDiscountType.fixedAmount: 'FIXED_AMOUNT',
  CatalogDiscountType.variablePercentage: 'VARIABLE_PERCENTAGE',
  CatalogDiscountType.variableAmount: 'VARIABLE_AMOUNT',
};
