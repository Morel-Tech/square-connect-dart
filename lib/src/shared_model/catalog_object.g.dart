// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogObject _$CatalogObjectFromJson(Map<String, dynamic> json) =>
    CatalogObject(
      type: $enumDecode(_$CatalogObjectTypeEnumMap, json['type']),
      id: json['id'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      version: json['version'] as int,
      isDeleted: json['is_deleted'] as bool,
      presentAtAllLocations: json['present_at_all_locations'] as bool,
      presentAtLocationIds: (json['present_at_location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      absentAtLocationIds: (json['absent_at_location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemData: json['item_data'] == null
          ? null
          : CatalogItem.fromJson(json['item_data'] as Map<String, dynamic>),
      itemVariationData: json['item_variation_data'] == null
          ? null
          : CatalogItemVariation.fromJson(
              json['item_variation_data'] as Map<String, dynamic>),
      categoryData: json['category_data'] == null
          ? null
          : CatalogCategory.fromJson(
              json['category_data'] as Map<String, dynamic>),
      taxData: json['tax_data'] == null
          ? null
          : CatalogTax.fromJson(json['tax_data'] as Map<String, dynamic>),
      discountData: json['discount_data'] == null
          ? null
          : CatalogDiscount.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      modifierListData: json['modifier_list_data'] == null
          ? null
          : CatalogModifierList.fromJson(
              json['modifier_list_data'] as Map<String, dynamic>),
      modifierData: json['modifier_data'] == null
          ? null
          : CatalogModifier.fromJson(
              json['modifier_data'] as Map<String, dynamic>),
      imageData: json['image_data'] == null
          ? null
          : CatalogImage.fromJson(json['image_data'] as Map<String, dynamic>),
      measurementUnitData: json['measurement_unit_data'] == null
          ? null
          : CatalogMeasurementUnit.fromJson(
              json['measurement_unit_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogObjectToJson(CatalogObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$CatalogObjectTypeEnumMap[instance.type]!,
      'updated_at': instance.updatedAt.toIso8601String(),
      'version': instance.version,
      'is_deleted': instance.isDeleted,
      'present_at_all_locations': instance.presentAtAllLocations,
      'present_at_location_ids': instance.presentAtLocationIds,
      'absent_at_location_ids': instance.absentAtLocationIds,
      'item_data': instance.itemData?.toJson(),
      'item_variation_data': instance.itemVariationData?.toJson(),
      'category_data': instance.categoryData?.toJson(),
      'tax_data': instance.taxData?.toJson(),
      'discount_data': instance.discountData?.toJson(),
      'modifier_list_data': instance.modifierListData?.toJson(),
      'modifier_data': instance.modifierData?.toJson(),
      'image_data': instance.imageData?.toJson(),
      'measurement_unit_data': instance.measurementUnitData?.toJson(),
    };

const _$CatalogObjectTypeEnumMap = {
  CatalogObjectType.item: 'ITEM',
  CatalogObjectType.itemVariation: 'ITEM_VARIATION',
  CatalogObjectType.modifier: 'MODIFIER',
  CatalogObjectType.modifierList: 'MODIFIER_LIST',
  CatalogObjectType.category: 'CATEGORY',
  CatalogObjectType.discount: 'DISCOUNT',
  CatalogObjectType.tax: 'TAX',
  CatalogObjectType.image: 'IMAGE',
  CatalogObjectType.pricingRule: 'PRICING_RULE',
  CatalogObjectType.productSet: 'PRODUCT_SET',
  CatalogObjectType.timePeriod: 'TIME_PERIOD',
};
