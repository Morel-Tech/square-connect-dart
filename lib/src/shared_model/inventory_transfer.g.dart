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

Map<String, dynamic> _$InventoryTransferToJson(InventoryTransfer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('state', _$InventoryStateEnumMap[instance.state]);
  writeNotNull('from_location_id', instance.fromLocationId);
  writeNotNull('to_location_id', instance.toLocationId);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_object_type',
      _$CatalogObjectTypeEnumMap[instance.catalogObjectType]);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('occurred_at', instance.occurredAt?.toIso8601String());
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('employee_id', instance.employeeId);
  return val;
}

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
