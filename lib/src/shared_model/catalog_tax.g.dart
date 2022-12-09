// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogTax _$CatalogTaxFromJson(Map<String, dynamic> json) => CatalogTax(
      name: json['name'] as String?,
      calculationPhase: $enumDecodeNullable(
          _$TaxCalculationPhaseEnumMap, json['calculation_phase']),
      inclusionType: $enumDecodeNullable(
          _$TaxInclusionTypeEnumMap, json['inclusion_type']),
      percentage: json['percentage'] as String?,
      appliesToCustomAmounts: json['applies_to_custom_amounts'] as bool?,
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$CatalogTaxToJson(CatalogTax instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calculation_phase':
          _$TaxCalculationPhaseEnumMap[instance.calculationPhase],
      'inclusion_type': _$TaxInclusionTypeEnumMap[instance.inclusionType],
      'percentage': instance.percentage,
      'applies_to_custom_amounts': instance.appliesToCustomAmounts,
      'enabled': instance.enabled,
    };

const _$TaxCalculationPhaseEnumMap = {
  TaxCalculationPhase.taxSubtotalPhase: 'TAX_SUBTOTAL_PHASE',
  TaxCalculationPhase.taxTotalPhase: 'TAX_TOTAL_PHASE',
};

const _$TaxInclusionTypeEnumMap = {
  TaxInclusionType.additive: 'ADDITIVE',
  TaxInclusionType.inclusive: 'INCLUSIVE',
};
