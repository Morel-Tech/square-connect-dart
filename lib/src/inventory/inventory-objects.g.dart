// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryCount _$InventoryCountFromJson(Map<String, dynamic> json) =>
    InventoryCount(
      catalogObjectId: json['catalogObjectId'] as String,
      catalogObjectType:
          _$enumDecode(_$CatalogObjectTypeEnumMap, json['catalogObjectType']),
      inventoryState:
          _$enumDecode(_$InventoryStateEnumMap, json['inventoryState']),
      locationId: json['locationId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      calculatedAt: DateTime.parse(json['calculatedAt'] as String),
    );

Map<String, dynamic> _$InventoryCountToJson(InventoryCount instance) =>
    <String, dynamic>{
      'catalogObjectId': instance.catalogObjectId,
      'catalogObjectType':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'inventoryState': _$InventoryStateEnumMap[instance.inventoryState],
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'calculatedAt': instance.calculatedAt.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

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

InventoryChange _$InventoryChangeFromJson(Map<String, dynamic> json) =>
    InventoryChange(
      type: _$enumDecode(_$InventoryChangeTypeEnumMap, json['type']),
      physicalCount: InventoryPhysicalCount.fromJson(
          json['physicalCount'] as Map<String, dynamic>),
      adjustment: InventoryAdjustment.fromJson(
          json['adjustment'] as Map<String, dynamic>),
      transfer:
          InventoryTransfer.fromJson(json['transfer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InventoryChangeToJson(InventoryChange instance) =>
    <String, dynamic>{
      'type': _$InventoryChangeTypeEnumMap[instance.type],
      'physicalCount': instance.physicalCount,
      'adjustment': instance.adjustment,
      'transfer': instance.transfer,
    };

const _$InventoryChangeTypeEnumMap = {
  InventoryChangeType.physicalCount: 'PHYSICAL_COUNT',
  InventoryChangeType.adjustment: 'ADJUSTMENT',
  InventoryChangeType.transfer: 'TRANSFER',
};

InventoryPhysicalCount _$InventoryPhysicalCountFromJson(
        Map<String, dynamic> json) =>
    InventoryPhysicalCount(
      id: json['id'] as String,
      referenceId: json['referenceId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      catalogObjectType:
          _$enumDecode(_$CatalogObjectTypeEnumMap, json['catalogObjectType']),
      state: _$enumDecode(_$InventoryStateEnumMap, json['state']),
      locationId: json['locationId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      source:
          SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employeeId'] as String,
      occurredAt: DateTime.parse(json['occurredAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$InventoryPhysicalCountToJson(
        InventoryPhysicalCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'catalogObjectId': instance.catalogObjectId,
      'catalogObjectType':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'state': _$InventoryStateEnumMap[instance.state],
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'source': instance.source,
      'employeeId': instance.employeeId,
      'occurredAt': instance.occurredAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

InventoryAdjustment _$InventoryAdjustmentFromJson(Map<String, dynamic> json) =>
    InventoryAdjustment(
      id: json['id'] as String,
      referenceId: json['referenceId'] as String,
      fromState: _$enumDecode(_$InventoryStateEnumMap, json['fromState']),
      toState: _$enumDecode(_$InventoryStateEnumMap, json['toState']),
      locationId: json['locationId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      catalogObjectType:
          _$enumDecode(_$CatalogObjectTypeEnumMap, json['catalogObjectType']),
      quantity: (json['quantity'] as num).toDouble(),
      totalPriceMoney:
          Money.fromJson(json['totalPriceMoney'] as Map<String, dynamic>),
      occurredAt: DateTime.parse(json['occurredAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      source:
          SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employeeId'] as String,
      transactionId: json['transactionId'] as String,
      refundId: json['refundId'] as String,
      purchaseOrderId: json['purchaseOrderId'] as String,
      goodsReceiptId: json['goodsReceiptId'] as String,
    );

Map<String, dynamic> _$InventoryAdjustmentToJson(
        InventoryAdjustment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'fromState': _$InventoryStateEnumMap[instance.fromState],
      'toState': _$InventoryStateEnumMap[instance.toState],
      'locationId': instance.locationId,
      'catalogObjectId': instance.catalogObjectId,
      'catalogObjectType':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'quantity': instance.quantity,
      'totalPriceMoney': instance.totalPriceMoney,
      'occurredAt': instance.occurredAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'source': instance.source,
      'employeeId': instance.employeeId,
      'transactionId': instance.transactionId,
      'refundId': instance.refundId,
      'purchaseOrderId': instance.purchaseOrderId,
      'goodsReceiptId': instance.goodsReceiptId,
    };

InventoryTransfer _$InventoryTransferFromJson(Map<String, dynamic> json) =>
    InventoryTransfer(
      id: json['id'] as String,
      referenceId: json['referenceId'] as String,
      state: _$enumDecode(_$InventoryStateEnumMap, json['state']),
      fromLocationId: json['fromLocationId'] as String,
      toLocationId: json['toLocationId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      catalogObjectType:
          _$enumDecode(_$CatalogObjectTypeEnumMap, json['catalogObjectType']),
      quantity: (json['quantity'] as num).toDouble(),
      occurredAt: DateTime.parse(json['occurredAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      source:
          SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employeeId'] as String,
    );

Map<String, dynamic> _$InventoryTransferToJson(InventoryTransfer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'state': _$InventoryStateEnumMap[instance.state],
      'fromLocationId': instance.fromLocationId,
      'toLocationId': instance.toLocationId,
      'catalogObjectId': instance.catalogObjectId,
      'catalogObjectType':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'quantity': instance.quantity,
      'occurredAt': instance.occurredAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'source': instance.source,
      'employeeId': instance.employeeId,
    };

SourceApplication _$SourceApplicationFromJson(Map<String, dynamic> json) =>
    SourceApplication(
      product: _$enumDecode(_$ProductEnumMap, json['product']),
      applicationId: json['applicationId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SourceApplicationToJson(SourceApplication instance) =>
    <String, dynamic>{
      'product': _$ProductEnumMap[instance.product],
      'applicationId': instance.applicationId,
      'name': instance.name,
    };

const _$ProductEnumMap = {
  Product.squarePos: 'SQUARE_POS',
  Product.externalApi: 'EXTERNAL_API',
  Product.billing: 'BILLING',
  Product.appointments: 'APPOINTMENTS',
  Product.invoices: 'INVOICES',
  Product.onlineStore: 'ONLINE_STORE',
  Product.payroll: 'PAYROLL',
  Product.dashboard: 'DASHBOARD',
  Product.itemLibraryImport: 'ITEM_LIBRARY_IMPORT',
  Product.other: 'OTHER',
};
