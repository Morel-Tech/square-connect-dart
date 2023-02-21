import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_object.g.dart';

@JsonSerializable()
class CatalogObject extends Equatable {
  const CatalogObject({
    required this.type,
    required this.id,
    required this.version,
    required this.isDeleted,
    required this.presentAtAllLocations,
    this.updatedAt,
    this.presentAtLocationIds,
    this.absentAtLocationIds,
    this.itemData,
    this.itemVariationData,
    this.categoryData,
    this.taxData,
    this.discountData,
    this.modifierListData,
    this.modifierData,
    this.imageData,
    this.measurementUnitData,
    // this.customAttributeDefinitionData,
    // this.customAttributeValues,
    this.itemOptionData,
    this.itemOptionValueData,
    this.pricingRuleData,
    this.productSetData,
    // this.quickAmountsSettingsData,
    // this.subscriptionPlanData,
    // this.timePeriodData,
  });

  /// Converts a [Map] to an [CatalogObject]
  factory CatalogObject.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectFromJson(json);

  /// Converts a [CatalogObject] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogObjectToJson(this);

  final String? id;
  final CatalogObjectType? type;
  final DateTime? updatedAt;
  final int? version;
  final bool? isDeleted;
  final bool? presentAtAllLocations;
  final List<String>? presentAtLocationIds;
  final List<String>? absentAtLocationIds;
  final CatalogItem? itemData;
  final CatalogItemVariation? itemVariationData;
  final CatalogCategory? categoryData;
  final CatalogTax? taxData;
  final CatalogDiscount? discountData;
  final CatalogModifierList? modifierListData;
  final CatalogModifier? modifierData;
  final CatalogImage? imageData;
  final CatalogMeasurementUnit? measurementUnitData;
  // final CatalogCustomAttributeDefinition? customAttributeDefinitionData;
  // final Map<String, CatalogCustomAttributeValue>? customAttributeValues;
  final CatalogItemOption? itemOptionData;
  final CatalogItemOptionValue? itemOptionValueData;
  final CatalogPricingRule? pricingRuleData;
  final CatalogProductSet? productSetData;
  // final CatalogQuickAmountsSettings? quickAmountsSettingsData;
  // final CatalogSubscriptionPlan? subscriptionPlanData;
  // final CatalogTimePeriod? timePeriodData;

  @override
  List<Object?> get props {
    return [
      type,
      id,
      updatedAt,
      version,
      isDeleted,
      presentAtAllLocations,
      presentAtLocationIds,
      absentAtLocationIds,
      itemData,
      itemVariationData,
      categoryData,
      taxData,
      discountData,
      modifierListData,
      modifierData,
      imageData,
      measurementUnitData,
      // customAttributeDefinitionData,
      // customAttributeValues,
      itemOptionData,
      itemOptionValueData,
      pricingRuleData,
      productSetData,
      // quickAmountsSettingsData,
      // subscriptionPlanData,
      // timePeriodData,
    ];
  }
}
