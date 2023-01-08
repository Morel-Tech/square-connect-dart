// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => CatalogItem(
      name: json['name'] as String?,
      description: json['description'] as String?,
      abbreviation: json['abbreviation'] as String?,
      labelColor: json['label_color'] as String?,
      availableOnline: json['available_online'] as bool?,
      availableForPickup: json['available_for_pickup'] as bool?,
      availableElectronically: json['available_electronically'] as bool?,
      categoryId: json['category_id'] as String?,
      taxIds:
          (json['tax_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierListInfo: (json['modifier_list_info'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemModifierListInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      productType: $enumDecodeNullable(
          _$CatalogItemProductTypeEnumMap, json['product_type']),
      skipModifierScreen: json['skip_modifier_screen'] as bool?,
      itemOptions: (json['item_options'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemOptionForItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortName: json['sort_name'] as String?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogItemToJson(CatalogItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('abbreviation', instance.abbreviation);
  writeNotNull('label_color', instance.labelColor);
  writeNotNull('available_online', instance.availableOnline);
  writeNotNull('available_for_pickup', instance.availableForPickup);
  writeNotNull('available_electronically', instance.availableElectronically);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('tax_ids', instance.taxIds);
  writeNotNull('modifier_list_info',
      instance.modifierListInfo?.map((e) => e.toJson()).toList());
  writeNotNull(
      'variations', instance.variations?.map((e) => e.toJson()).toList());
  writeNotNull(
      'product_type', _$CatalogItemProductTypeEnumMap[instance.productType]);
  writeNotNull('skip_modifier_screen', instance.skipModifierScreen);
  writeNotNull(
      'item_options', instance.itemOptions?.map((e) => e.toJson()).toList());
  writeNotNull('sort_name', instance.sortName);
  writeNotNull('image_ids', instance.imageIds);
  return val;
}

const _$CatalogItemProductTypeEnumMap = {
  CatalogItemProductType.regular: 'REGULAR',
  CatalogItemProductType.giftCard: 'GIFT_CARD',
  CatalogItemProductType.appointmentsService: 'APPOINTMENTS_SERVICE',
  CatalogItemProductType.retailItem: 'RETAIL_ITEM',
  CatalogItemProductType.restaurantItem: 'RESTAURANT_ITEM',
};
