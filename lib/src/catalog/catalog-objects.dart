import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog-objects.g.dart';

@JsonSerializable()
class CatalogObject extends Equatable {
  const CatalogObject({
    required this.type,
    required this.id,
    required this.updatedAt,
    required this.version,
    required this.isDeleted,
    required this.presentAtAllLocations,
    required this.presentAtLocationIds,
    required this.absentAtLocationIds,
    required this.imageId,
    required this.itemData,
    required this.itemVariationData,
    required this.categoryData,
    required this.taxData,
    required this.discountData,
    required this.modifierListData,
    required this.modifierData,
    required this.imageData,
    required this.measurementUnitData,
  });

  /// Converts a [Map] to an [CatalogObject]
  factory CatalogObject.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectFromJson(json);

  /// Converts a [CatalogObject] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogObjectToJson(this);

  final CatalogObjectType type;
  final String id;
  final DateTime updatedAt;
  final int version;
  final bool isDeleted;
  final bool presentAtAllLocations;
  final List<String> presentAtLocationIds;
  final List<String> absentAtLocationIds;
  final String imageId;
  final CatalogItem itemData;
  final CatalogItemVariation itemVariationData;
  final CatalogCategory categoryData;
  final CatalogTax taxData;
  final CatalogDiscount discountData;
  final CatalogModifierList modifierListData;
  final CatalogModifier modifierData;
  final CatalogImage imageData;
  final CatalogMeasurementUnit measurementUnitData;

  @override
  List<Object> get props {
    return [
      type,
      id,
      updatedAt,
      version,
      isDeleted,
      presentAtAllLocations,
      presentAtLocationIds,
      absentAtLocationIds,
      imageId,
      itemData,
      itemVariationData,
      categoryData,
      taxData,
      discountData,
      modifierListData,
      modifierData,
      imageData,
      measurementUnitData,
    ];
  }
}

@JsonSerializable()
class CatalogItem extends Equatable {
  const CatalogItem({
    required this.name,
    required this.description,
    required this.abbreviation,
    required this.labelColor,
    required this.availableOnline,
    required this.availableForPickup,
    required this.availableElectronically,
    required this.categoryId,
    required this.taxIds,
    required this.modifierListInfo,
    required this.variations,
    required this.productType,
    required this.skipModifierScreen,
  });

  /// Converts a [Map] to an [CatalogItem]
  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);

  /// Converts a [CatalogItem] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemToJson(this);

  final String name;
  final String description;
  final String abbreviation;
  final String labelColor;
  final bool availableOnline;
  final bool availableForPickup;
  final bool availableElectronically;
  final String categoryId;
  final List<String> taxIds;
  final List<CatalogItemModifierListInfo> modifierListInfo;
  final List<CatalogObject> variations;
  final CatalogItemProductType productType;
  final bool skipModifierScreen;

  @override
  List<Object> get props {
    return [
      name,
      description,
      abbreviation,
      labelColor,
      availableOnline,
      availableForPickup,
      availableElectronically,
      categoryId,
      taxIds,
      modifierListInfo,
      variations,
      productType,
      skipModifierScreen,
    ];
  }
}

@JsonSerializable()
class CatalogItemVariation extends Equatable {
  const CatalogItemVariation({
    required this.itemId,
    required this.name,
    required this.sku,
    required this.upc,
    required this.ordinal,
    required this.pricingType,
    required this.priceMoney,
    required this.locationOverrides,
    required this.trackInventory,
    required this.inventoryAlertType,
    required this.inventoryAlertThreshold,
    required this.userData,
    required this.serviceDuration,
    required this.catalogMeasurementUnitId,
    required this.measurementUnitId,
  });

  /// Converts a [Map] to an [CatalogItemVariation]
  factory CatalogItemVariation.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemVariationFromJson(json);

  /// Converts a [CatalogItemVariation] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemVariationToJson(this);

  final String itemId;
  final String name;
  final String sku;
  final String upc;
  final int ordinal;
  final CatalogPricingType pricingType;
  final Money priceMoney;
  final List<ItemVariationLocationOverride> locationOverrides;
  final bool trackInventory;
  final InventoryAlertType inventoryAlertType;
  final int inventoryAlertThreshold;
  final String userData;
  final int serviceDuration;
  final String catalogMeasurementUnitId;
  final String measurementUnitId;

  @override
  List<Object> get props {
    return [
      itemId,
      name,
      sku,
      upc,
      ordinal,
      pricingType,
      priceMoney,
      locationOverrides,
      trackInventory,
      inventoryAlertType,
      inventoryAlertThreshold,
      userData,
      serviceDuration,
      catalogMeasurementUnitId,
      measurementUnitId,
    ];
  }
}

@JsonSerializable()
class CatalogCategory extends Equatable {
  const CatalogCategory({
    required this.name,
  });

  /// Converts a [Map] to an [CatalogCategory]
  factory CatalogCategory.fromJson(Map<String, dynamic> json) =>
      _$CatalogCategoryFromJson(json);

  /// Converts a [CatalogCategory] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogCategoryToJson(this);

  final String name;

  @override
  List<Object> get props => [name];
}

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
class ItemVariationLocationOverride extends Equatable {
  const ItemVariationLocationOverride({
    required this.locationId,
    required this.priceMoney,
    required this.pricingType,
    required this.trackInventory,
    required this.inventoryAlertType,
    required this.inventoryAlertThreshold,
  });

  /// Converts a [Map] to an [ItemVariationLocationOverride]
  factory ItemVariationLocationOverride.fromJson(Map<String, dynamic> json) =>
      _$ItemVariationLocationOverrideFromJson(json);

  /// Converts a [ItemVariationLocationOverride] to a [Map]
  Map<String, dynamic> toJson() => _$ItemVariationLocationOverrideToJson(this);

  final String locationId;
  final Money priceMoney;
  final CatalogPricingType pricingType;
  final bool trackInventory;
  final InventoryAlertType inventoryAlertType;
  final int inventoryAlertThreshold;

  @override
  List<Object> get props {
    return [
      locationId,
      priceMoney,
      pricingType,
      trackInventory,
      inventoryAlertType,
      inventoryAlertThreshold,
    ];
  }
}

@JsonSerializable()
class CatalogItemModifierListInfo extends Equatable {
  const CatalogItemModifierListInfo({
    required this.modifierListId,
    required this.modifierOverrides,
    required this.minSelectedModifiers,
    required this.maxSelectedModifiers,
    required this.enabled,
  });

  /// Converts a [Map] to an [CatalogItemModifierListInfo]
  factory CatalogItemModifierListInfo.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemModifierListInfoFromJson(json);

  /// Converts a [CatalogItemModifierListInfo] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemModifierListInfoToJson(this);

  final String modifierListId;
  final List<CatalogModifierOverride> modifierOverrides;
  final int minSelectedModifiers;
  final int maxSelectedModifiers;
  final bool enabled;

  @override
  List<Object> get props {
    return [
      modifierListId,
      modifierOverrides,
      minSelectedModifiers,
      maxSelectedModifiers,
      enabled,
    ];
  }
}

@JsonSerializable()
class CatalogModifierOverride extends Equatable {
  const CatalogModifierOverride({
    required this.modifierId,
    required this.onByDefault,
  });

  /// Converts a [Map] to an [CatalogModifierOverride]
  factory CatalogModifierOverride.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierOverrideFromJson(json);

  /// Converts a [CatalogModifierOverride] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogModifierOverrideToJson(this);

  /// The ID of the [CatalogModifier] whose default behavior is being overridden
  final String modifierId;

  /// If true, this [CatalogModifier] should be selected by default for this
  /// [CatalogItem].
  final bool onByDefault;

  @override
  List<Object> get props => [modifierId, onByDefault];
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
