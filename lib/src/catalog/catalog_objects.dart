import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_objects.g.dart';

@JsonSerializable()
class CatalogTax extends Equatable {
  const CatalogTax({
    required this.name,
    required this.calculationPhase,
    required this.inclusionType,
    required this.percentage,
    required this.appliesToCustomAmounts,
    required this.enabled,
  });

  /// Converts a [Map] to an [CatalogTax]
  factory CatalogTax.fromJson(Map<String, dynamic> json) =>
      _$CatalogTaxFromJson(json);

  /// Converts a [CatalogTax] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogTaxToJson(this);

  final String name;
  final TaxCalculationPhase calculationPhase;
  final TaxInclusionType inclusionType;
  final double percentage;
  final bool appliesToCustomAmounts;
  final bool enabled;

  @override
  List<Object?> get props {
    return [
      name,
      calculationPhase,
      inclusionType,
      percentage,
      appliesToCustomAmounts,
      enabled,
    ];
  }
}

@JsonSerializable()
class CatalogDiscount extends Equatable {
  const CatalogDiscount({
    required this.name,
    required this.discountType,
    required this.percentage,
    required this.amountMoney,
    required this.pinRequired,
    required this.labelColor,
  });

  /// Converts a [Map] to an [CatalogDiscount]
  factory CatalogDiscount.fromJson(Map<String, dynamic> json) =>
      _$CatalogDiscountFromJson(json);

  /// Converts a [CatalogDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogDiscountToJson(this);

  final String name;
  final CatalogDiscountType discountType;
  final double percentage;
  final Money amountMoney;
  final bool pinRequired;
  final String labelColor;

  @override
  List<Object?> get props {
    return [
      name,
      discountType,
      percentage,
      amountMoney,
      pinRequired,
      labelColor,
    ];
  }
}

@JsonSerializable()
class CatalogMeasurementUnit extends Equatable {
  const CatalogMeasurementUnit({
    required this.measurementUnit,
    required this.precision,
  });

  /// Converts a [Map] to an [CatalogMeasurementUnit]
  factory CatalogMeasurementUnit.fromJson(Map<String, dynamic> json) =>
      _$CatalogMeasurementUnitFromJson(json);

  /// Converts a [CatalogMeasurementUnit] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogMeasurementUnitToJson(this);

  final MeasurementUnit measurementUnit;
  final int precision;

  @override
  List<Object?> get props => [measurementUnit, precision];
}

@JsonSerializable()
class CatalogObjectBatch extends Equatable {
  const CatalogObjectBatch({
    required this.objects,
  });

  /// Converts a [Map] to an [CatalogObjectBatch]
  factory CatalogObjectBatch.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectBatchFromJson(json);

  /// Converts a [CatalogObjectBatch] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogObjectBatchToJson(this);

  final List<CatalogObject> objects;

  @override
  List<Object?> get props => [objects];
}

@JsonSerializable()
class CatalogInfoResponseLimits extends Equatable {
  const CatalogInfoResponseLimits({
    required this.batchUpsertMaxObjectsPerBatch,
    required this.batchUpsertMaxTotalObjects,
    required this.batchRetrieveMaxObjectIds,
    required this.searchMaxPageLimit,
    required this.batchDeleteMaxObjectIds,
    required this.updateItemTaxesMaxItemIds,
    required this.updateItemTaxesMaxTaxesToEnable,
    required this.updateItemTaxesMaxTaxesToDisable,
    required this.updateItemModifierListsMaxItemIds,
    required this.updateItemModifierListsMaxModifierListsToEnable,
    required this.updateItemModifierListsMaxModifierListsToDisable,
  });

  /// Converts a [Map] to an [CatalogInfoResponseLimits]
  factory CatalogInfoResponseLimits.fromJson(Map<String, dynamic> json) =>
      _$CatalogInfoResponseLimitsFromJson(json);

  /// Converts a [CatalogInfoResponseLimits] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogInfoResponseLimitsToJson(this);

  final int batchUpsertMaxObjectsPerBatch;
  final int batchUpsertMaxTotalObjects;
  final int batchRetrieveMaxObjectIds;
  final int searchMaxPageLimit;
  final int batchDeleteMaxObjectIds;
  final int updateItemTaxesMaxItemIds;
  final int updateItemTaxesMaxTaxesToEnable;
  final int updateItemTaxesMaxTaxesToDisable;
  final int updateItemModifierListsMaxItemIds;
  final int updateItemModifierListsMaxModifierListsToEnable;
  final int updateItemModifierListsMaxModifierListsToDisable;

  @override
  List<Object?> get props {
    return [
      batchUpsertMaxObjectsPerBatch,
      batchUpsertMaxTotalObjects,
      batchRetrieveMaxObjectIds,
      searchMaxPageLimit,
      batchDeleteMaxObjectIds,
      updateItemTaxesMaxItemIds,
      updateItemTaxesMaxTaxesToEnable,
      updateItemTaxesMaxTaxesToDisable,
      updateItemModifierListsMaxItemIds,
      updateItemModifierListsMaxModifierListsToEnable,
      updateItemModifierListsMaxModifierListsToDisable,
    ];
  }
}

@JsonSerializable()
class StandardUnitDescriptionGroup extends Equatable {
  const StandardUnitDescriptionGroup({
    required this.standardUnitDescriptions,
    required this.languageCode,
  });

  /// Converts a [Map] to an [StandardUnitDescriptionGroup]
  factory StandardUnitDescriptionGroup.fromJson(Map<String, dynamic> json) =>
      _$StandardUnitDescriptionGroupFromJson(json);

  /// Converts a [StandardUnitDescriptionGroup] to a [Map]
  Map<String, dynamic> toJson() => _$StandardUnitDescriptionGroupToJson(this);

  final List<StandardUnitDescription> standardUnitDescriptions;
  final String languageCode;

  @override
  List<Object?> get props => [standardUnitDescriptions, languageCode];
}

@JsonSerializable()
class StandardUnitDescription extends Equatable {
  const StandardUnitDescription({
    required this.unit,
    required this.name,
    required this.abbreviation,
  });

  /// Converts a [Map] to an [StandardUnitDescription]
  factory StandardUnitDescription.fromJson(Map<String, dynamic> json) =>
      _$StandardUnitDescriptionFromJson(json);

  /// Converts a [StandardUnitDescription] to a [Map]
  Map<String, dynamic> toJson() => _$StandardUnitDescriptionToJson(this);

  final MeasurementUnit unit;
  final String name;
  final String abbreviation;

  @override
  List<Object?> get props => [unit, name, abbreviation];
}

@JsonSerializable()
class CatalogIdMapping extends Equatable {
  const CatalogIdMapping({
    required this.clientObjectId,
    required this.objectId,
  });

  /// Converts a [Map] to an [CatalogIdMapping]
  factory CatalogIdMapping.fromJson(Map<String, dynamic> json) =>
      _$CatalogIdMappingFromJson(json);

  /// Converts a [CatalogIdMapping] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogIdMappingToJson(this);

  final String clientObjectId;
  final String objectId;

  @override
  List<Object?> get props => [clientObjectId, objectId];
}

@JsonSerializable()
class CatalogPricingRule extends Equatable {
  const CatalogPricingRule({
    this.customerGroupIdsAny,
    this.discountId,
    this.excludeProductsId,
    this.excludeStrategy,
    this.matchProductsId,
    this.minimumOrderSubtotalMoney,
    this.name,
    this.timePeriodIds,
    this.validFromDate,
    this.validFromLocalTime,
    this.validUntilDate,
    this.validUntilLocalTime,
    this.discountTargetScope,
  });

  /// Converts a [Map] to an [CatalogPricingRule]
  factory CatalogPricingRule.fromJson(Map<String, dynamic> json) =>
      _$CatalogPricingRuleFromJson(json);

  /// Converts a [CatalogPricingRule] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogPricingRuleToJson(this);

  final List<String>? customerGroupIdsAny;
  final String? discountId;
  final String? excludeProductsId;
  final String? excludeStrategy;
  final String? matchProductsId;
  final Money? minimumOrderSubtotalMoney;
  final String? name;
  final List<String>? timePeriodIds;
  final String? validFromDate;
  final String? validFromLocalTime;
  final String? validUntilDate;
  final String? validUntilLocalTime;
  final DiscountTargetScopeType? discountTargetScope;

  @override
  List<Object?> get props => [
        customerGroupIdsAny,
        discountId,
        excludeProductsId,
        excludeStrategy,
        matchProductsId,
        minimumOrderSubtotalMoney,
        name,
        timePeriodIds,
        validFromDate,
        validFromLocalTime,
        validUntilDate,
        validUntilLocalTime,
        discountTargetScope,
      ];
}

@JsonSerializable()
class CatalogProductSet extends Equatable {
  const CatalogProductSet({
    this.name,
    this.productIdsAny,
    this.productIdsAll,
    this.quantityExact,
    this.quantityMin,
    this.quantityMax,
    this.allProducts,
  });

  /// Converts a [Map] to an [CatalogProductSet]
  factory CatalogProductSet.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductSetFromJson(json);

  /// Converts a [CatalogProductSet] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogProductSetToJson(this);

  final String? name;
  final List<String>? productIdsAny;
  final List<String>? productIdsAll;
  final int? quantityExact;
  final int? quantityMin;
  final int? quantityMax;
  final bool? allProducts;

  @override
  List<Object?> get props => [
        name,
        productIdsAny,
        productIdsAll,
        quantityExact,
        quantityMin,
        quantityMax,
        allProducts,
      ];
}
