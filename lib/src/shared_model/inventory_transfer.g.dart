// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryTransfer _$InventoryTransferFromJson(Map<String, dynamic> json) =>
    InventoryTransfer(
      id: json['id'] as String?,
      referenceId: json['reference_id'] as String?,
      state: $enumDecodeNullable(_$InventoryStateEnumMap, json['state']),
      fromLocationId: json['from_location_id'] as String?,
      toLocationId: json['to_location_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogObjectType: $enumDecodeNullable(
          _$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      quantity: (json['quantity'] as num?)?.toDouble(),
      occurredAt: json['occurred_at'] == null
          ? null
          : DateTime.parse(json['occurred_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      source: json['source'] == null
          ? null
          : SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employee_id'] as String?,
    );

Map<String, dynamic> _$InventoryTransferToJson(InventoryTransfer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference_id': instance.referenceId,
      'state': _$InventoryStateEnumMap[instance.state],
      'from_location_id': instance.fromLocationId,
      'to_location_id': instance.toLocationId,
      'catalog_object_id': instance.catalogObjectId,
      'catalog_object_type':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'quantity': instance.quantity,
      'occurred_at': instance.occurredAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'source': instance.source?.toJson(),
      'employee_id': instance.employeeId,
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
