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
  List<Object> get props {
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
  List<Object> get props {
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
class CatalogModifierList extends Equatable {
  const CatalogModifierList({
    required this.name,
    required this.selectionType,
    required this.modifiers,
  });

  /// Converts a [Map] to an [CatalogModifierList]
  factory CatalogModifierList.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierListFromJson(json);

  /// Converts a [CatalogModifierList] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogModifierListToJson(this);

  final String name;
  final CatalogModifierListSelectionType selectionType;
  final List<CatalogObject> modifiers;

  @override
  List<Object> get props => [name, selectionType, modifiers];
}

@JsonSerializable()
class CatalogModifier extends Equatable {
  const CatalogModifier({
    required this.name,
    required this.priceMoney,
    required this.onByDefault,
    required this.ordinal,
  });

  /// Converts a [Map] to an [CatalogModifier]
  factory CatalogModifier.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierFromJson(json);

  /// Converts a [CatalogModifier] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogModifierToJson(this);

  final String name;
  final Money priceMoney;
  final bool onByDefault;
  final int ordinal;

  @override
  List<Object> get props => [name, priceMoney, onByDefault, ordinal];
}

@JsonSerializable()
class CatalogImage extends Equatable {
  const CatalogImage({
    required this.name,
    required this.url,
    required this.caption,
  });

  /// Converts a [Map] to an [CatalogImage]
  factory CatalogImage.fromJson(Map<String, dynamic> json) =>
      _$CatalogImageFromJson(json);

  /// Converts a [CatalogImage] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogImageToJson(this);

  final String name;
  final String url;
  final String caption;

  @override
  List<Object> get props => [name, url, caption];
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
  List<Object> get props => [measurementUnit, precision];
}

@JsonSerializable()
class MeasurementUnit extends Equatable {
  const MeasurementUnit({
    required this.customUnit,
    required this.areaUnit,
    required this.lengthUnit,
    required this.volumeUnit,
    required this.weightUnit,
    required this.genericUnit,
  });

  /// Converts a [Map] to an [MeasurementUnit]
  factory MeasurementUnit.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitFromJson(json);

  /// Converts a [MeasurementUnit] to a [Map]
  Map<String, dynamic> toJson() => _$MeasurementUnitToJson(this);

  final MeasurementUnitCustom customUnit;
  final MeasurementUnitArea areaUnit;
  final MeasurementUnitLength lengthUnit;
  final MeasurementUnitVolume volumeUnit;
  final MeasurementUnitWeight weightUnit;
  final String genericUnit;

  @override
  List<Object> get props {
    return [
      customUnit,
      areaUnit,
      lengthUnit,
      volumeUnit,
      weightUnit,
      genericUnit,
    ];
  }
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
  List<Object> get props => [objects];
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
  List<Object> get props {
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
  List<Object> get props => [standardUnitDescriptions, languageCode];
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
  List<Object> get props => [unit, name, abbreviation];
}

@JsonSerializable()
class MeasurementUnitCustom extends Equatable {
  const MeasurementUnitCustom({
    required this.name,
    required this.abbreviation,
  });

  /// Converts a [Map] to an [MeasurementUnitCustom]
  factory MeasurementUnitCustom.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitCustomFromJson(json);

  /// Converts a [MeasurementUnitCustom] to a [Map]
  Map<String, dynamic> toJson() => _$MeasurementUnitCustomToJson(this);

  final String name;
  final String abbreviation;

  @override
  List<Object> get props => [name, abbreviation];
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
  List<Object> get props => [clientObjectId, objectId];
}
