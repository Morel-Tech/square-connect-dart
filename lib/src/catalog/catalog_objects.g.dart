// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogTax _$CatalogTaxFromJson(Map<String, dynamic> json) => CatalogTax(
      name: json['name'] as String,
      calculationPhase:
          $enumDecode(_$TaxCalculationPhaseEnumMap, json['calculation_phase']),
      inclusionType:
          $enumDecode(_$TaxInclusionTypeEnumMap, json['inclusion_type']),
      percentage: (json['percentage'] as num).toDouble(),
      appliesToCustomAmounts: json['applies_to_custom_amounts'] as bool,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$CatalogTaxToJson(CatalogTax instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calculation_phase':
          _$TaxCalculationPhaseEnumMap[instance.calculationPhase]!,
      'inclusion_type': _$TaxInclusionTypeEnumMap[instance.inclusionType]!,
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

CatalogDiscount _$CatalogDiscountFromJson(Map<String, dynamic> json) =>
    CatalogDiscount(
      name: json['name'] as String,
      discountType:
          $enumDecode(_$CatalogDiscountTypeEnumMap, json['discount_type']),
      percentage: json['percentage'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      pinRequired: json['pin_required'] as bool,
      labelColor: json['label_color'] as String,
    );

Map<String, dynamic> _$CatalogDiscountToJson(CatalogDiscount instance) =>
    <String, dynamic>{
      'name': instance.name,
      'discount_type': _$CatalogDiscountTypeEnumMap[instance.discountType]!,
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

CatalogPricingRule _$CatalogPricingRuleFromJson(Map<String, dynamic> json) =>
    CatalogPricingRule(
      customerGroupIdsAny: (json['customer_group_ids_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discountId: json['discount_id'] as String?,
      excludeProductsId: json['exclude_products_id'] as String?,
      excludeStrategy: json['exclude_strategy'] as String?,
      matchProductsId: json['match_products_id'] as String?,
      minimumOrderSubtotalMoney: json['minimum_order_subtotal_money'] == null
          ? null
          : Money.fromJson(
              json['minimum_order_subtotal_money'] as Map<String, dynamic>),
      name: json['name'] as String?,
      timePeriodIds: (json['time_period_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validFromDate: json['valid_from_date'] as String?,
      validFromLocalTime: json['valid_from_local_time'] as String?,
      validUntilDate: json['valid_until_date'] as String?,
      validUntilLocalTime: json['valid_until_local_time'] as String?,
      discountTargetScope: $enumDecodeNullable(
          _$DiscountTargetScopeTypeEnumMap, json['discount_target_scope']),
    );

Map<String, dynamic> _$CatalogPricingRuleToJson(CatalogPricingRule instance) =>
    <String, dynamic>{
      'customer_group_ids_any': instance.customerGroupIdsAny,
      'discount_id': instance.discountId,
      'exclude_products_id': instance.excludeProductsId,
      'exclude_strategy': instance.excludeStrategy,
      'match_products_id': instance.matchProductsId,
      'minimum_order_subtotal_money':
          instance.minimumOrderSubtotalMoney?.toJson(),
      'name': instance.name,
      'time_period_ids': instance.timePeriodIds,
      'valid_from_date': instance.validFromDate,
      'valid_from_local_time': instance.validFromLocalTime,
      'valid_until_date': instance.validUntilDate,
      'valid_until_local_time': instance.validUntilLocalTime,
      'discount_target_scope':
          _$DiscountTargetScopeTypeEnumMap[instance.discountTargetScope],
    };

const _$DiscountTargetScopeTypeEnumMap = {
  DiscountTargetScopeType.wholePurchase: 'WHOLE_PURCHASE',
  DiscountTargetScopeType.lineItem: 'LINE_ITEM',
};

CatalogProductSet _$CatalogProductSetFromJson(Map<String, dynamic> json) =>
    CatalogProductSet(
      name: json['name'] as String?,
      productIdsAny: (json['product_ids_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productIdsAll: (json['product_ids_all'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      quantityExact: json['quantity_exact'] as int?,
      quantityMin: json['quantity_min'] as int?,
      quantityMax: json['quantity_max'] as int?,
      allProducts: json['all_products'] as bool?,
    );

Map<String, dynamic> _$CatalogProductSetToJson(CatalogProductSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'product_ids_any': instance.productIdsAny,
      'product_ids_all': instance.productIdsAll,
      'quantity_exact': instance.quantityExact,
      'quantity_min': instance.quantityMin,
      'quantity_max': instance.quantityMax,
      'all_products': instance.allProducts,
    };
