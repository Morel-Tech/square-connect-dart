// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogTax _$CatalogTaxFromJson(Map<String, dynamic> json) => CatalogTax(
      name: json['name'] as String,
      calculationPhase:
          _$enumDecode(_$TaxCalculationPhaseEnumMap, json['calculation_phase']),
      inclusionType:
          _$enumDecode(_$TaxInclusionTypeEnumMap, json['inclusion_type']),
      percentage: (json['percentage'] as num).toDouble(),
      appliesToCustomAmounts: json['applies_to_custom_amounts'] as bool,
      enabled: json['enabled'] as bool,
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

const _$TaxCalculationPhaseEnumMap = {
  TaxCalculationPhase.taxSubtotalPhase: 'TAX_SUBTOTAL_PHASE',
  TaxCalculationPhase.taxTotalPhase: 'TAX_TOTAL_PHASE',
};

const _$TaxInclusionTypeEnumMap = {
  TaxInclusionType.additive: 'ADDITIVE',
  TaxInclusionType.inclusive: 'INCLUSIVE',
};

CatalogDiscount _$CatalogDiscountFromJson(Map<String, dynamic> json) =>
    CatalogDiscount(
      name: json['name'] as String,
      discountType:
          _$enumDecode(_$CatalogDiscountTypeEnumMap, json['discount_type']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      pinRequired: json['pin_required'] as bool,
      labelColor: json['label_color'] as String,
    );

Map<String, dynamic> _$CatalogDiscountToJson(CatalogDiscount instance) =>
    <String, dynamic>{
      'name': instance.name,
      'discount_type': _$CatalogDiscountTypeEnumMap[instance.discountType],
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney.toJson(),
      'pin_required': instance.pinRequired,
      'label_color': instance.labelColor,
    };

const _$CatalogDiscountTypeEnumMap = {
  CatalogDiscountType.fixedPercentage: 'FIXED_PERCENTAGE',
  CatalogDiscountType.fixedAmount: 'FIXED_AMOUNT',
  CatalogDiscountType.variablePercentage: 'VARIABLE_PERCENTAGE',
  CatalogDiscountType.variableAmount: 'VARIABLE_AMOUNT',
};

CatalogMeasurementUnit _$CatalogMeasurementUnitFromJson(
        Map<String, dynamic> json) =>
    CatalogMeasurementUnit(
      measurementUnit: MeasurementUnit.fromJson(
          json['measurement_unit'] as Map<String, dynamic>),
      precision: json['precision'] as int,
    );

Map<String, dynamic> _$CatalogMeasurementUnitToJson(
        CatalogMeasurementUnit instance) =>
    <String, dynamic>{
      'measurement_unit': instance.measurementUnit.toJson(),
      'precision': instance.precision,
    };

CatalogObjectBatch _$CatalogObjectBatchFromJson(Map<String, dynamic> json) =>
    CatalogObjectBatch(
      objects: (json['objects'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogObjectBatchToJson(CatalogObjectBatch instance) =>
    <String, dynamic>{
      'objects': instance.objects.map((e) => e.toJson()).toList(),
    };

CatalogInfoResponseLimits _$CatalogInfoResponseLimitsFromJson(
        Map<String, dynamic> json) =>
    CatalogInfoResponseLimits(
      batchUpsertMaxObjectsPerBatch:
          json['batch_upsert_max_objects_per_batch'] as int,
      batchUpsertMaxTotalObjects: json['batch_upsert_max_total_objects'] as int,
      batchRetrieveMaxObjectIds: json['batch_retrieve_max_object_ids'] as int,
      searchMaxPageLimit: json['search_max_page_limit'] as int,
      batchDeleteMaxObjectIds: json['batch_delete_max_object_ids'] as int,
      updateItemTaxesMaxItemIds: json['update_item_taxes_max_item_ids'] as int,
      updateItemTaxesMaxTaxesToEnable:
          json['update_item_taxes_max_taxes_to_enable'] as int,
      updateItemTaxesMaxTaxesToDisable:
          json['update_item_taxes_max_taxes_to_disable'] as int,
      updateItemModifierListsMaxItemIds:
          json['update_item_modifier_lists_max_item_ids'] as int,
      updateItemModifierListsMaxModifierListsToEnable:
          json['update_item_modifier_lists_max_modifier_lists_to_enable']
              as int,
      updateItemModifierListsMaxModifierListsToDisable:
          json['update_item_modifier_lists_max_modifier_lists_to_disable']
              as int,
    );

Map<String, dynamic> _$CatalogInfoResponseLimitsToJson(
        CatalogInfoResponseLimits instance) =>
    <String, dynamic>{
      'batch_upsert_max_objects_per_batch':
          instance.batchUpsertMaxObjectsPerBatch,
      'batch_upsert_max_total_objects': instance.batchUpsertMaxTotalObjects,
      'batch_retrieve_max_object_ids': instance.batchRetrieveMaxObjectIds,
      'search_max_page_limit': instance.searchMaxPageLimit,
      'batch_delete_max_object_ids': instance.batchDeleteMaxObjectIds,
      'update_item_taxes_max_item_ids': instance.updateItemTaxesMaxItemIds,
      'update_item_taxes_max_taxes_to_enable':
          instance.updateItemTaxesMaxTaxesToEnable,
      'update_item_taxes_max_taxes_to_disable':
          instance.updateItemTaxesMaxTaxesToDisable,
      'update_item_modifier_lists_max_item_ids':
          instance.updateItemModifierListsMaxItemIds,
      'update_item_modifier_lists_max_modifier_lists_to_enable':
          instance.updateItemModifierListsMaxModifierListsToEnable,
      'update_item_modifier_lists_max_modifier_lists_to_disable':
          instance.updateItemModifierListsMaxModifierListsToDisable,
    };

StandardUnitDescriptionGroup _$StandardUnitDescriptionGroupFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescriptionGroup(
      standardUnitDescriptions:
          (json['standard_unit_descriptions'] as List<dynamic>)
              .map((e) =>
                  StandardUnitDescription.fromJson(e as Map<String, dynamic>))
              .toList(),
      languageCode: json['language_code'] as String,
    );

Map<String, dynamic> _$StandardUnitDescriptionGroupToJson(
        StandardUnitDescriptionGroup instance) =>
    <String, dynamic>{
      'standard_unit_descriptions':
          instance.standardUnitDescriptions.map((e) => e.toJson()).toList(),
      'language_code': instance.languageCode,
    };

StandardUnitDescription _$StandardUnitDescriptionFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescription(
      unit: MeasurementUnit.fromJson(json['unit'] as Map<String, dynamic>),
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
    );

Map<String, dynamic> _$StandardUnitDescriptionToJson(
        StandardUnitDescription instance) =>
    <String, dynamic>{
      'unit': instance.unit.toJson(),
      'name': instance.name,
      'abbreviation': instance.abbreviation,
    };

CatalogIdMapping _$CatalogIdMappingFromJson(Map<String, dynamic> json) =>
    CatalogIdMapping(
      clientObjectId: json['client_object_id'] as String,
      objectId: json['object_id'] as String,
    );

Map<String, dynamic> _$CatalogIdMappingToJson(CatalogIdMapping instance) =>
    <String, dynamic>{
      'client_object_id': instance.clientObjectId,
      'object_id': instance.objectId,
    };