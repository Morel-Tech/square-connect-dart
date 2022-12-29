// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryCount _$InventoryCountFromJson(Map<String, dynamic> json) =>
    InventoryCount(
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogObjectType: $enumDecodeNullable(
          _$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      inventoryState:
          $enumDecodeNullable(_$InventoryStateEnumMap, json['inventory_state']),
      locationId: json['location_id'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      calculatedAt: json['calculated_at'] == null
          ? null
          : DateTime.parse(json['calculated_at'] as String),
    );

Map<String, dynamic> _$InventoryCountToJson(InventoryCount instance) =>
    <String, dynamic>{
      'catalog_object_id': instance.catalogObjectId,
      'catalog_object_type':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'inventory_state': _$InventoryStateEnumMap[instance.inventoryState],
      'location_id': instance.locationId,
      'quantity': instance.quantity,
      'calculated_at': instance.calculatedAt?.toIso8601String(),
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

const _$InventoryStateEnumMap = {
  InventoryState.custom: 'CUSTOM',
  InventoryState.inStock: 'IN_STOCK',
  InventoryState.sold: 'SOLD',
  InventoryState.returnedByCustomer: 'RETURNED_BY_CUSTOMER',
  InventoryState.reservedForSale: 'RESERVED_FOR_SALE',
  InventoryState.soldOnline: 'SOLD_ONLINE',
  InventoryState.orderedFromVendor: 'ORDERED_FROM_VENDOR',
  InventoryState.receivedFromVendor: 'RECEIVED_FROM_VENDOR',
  InventoryState.inTransitTo: 'IN_TRANSIT_TO',
  InventoryState.none: 'NONE',
  InventoryState.waste: 'WASTE',
  InventoryState.unlinkedReturn: 'UNLINKED_RETURN',
};
