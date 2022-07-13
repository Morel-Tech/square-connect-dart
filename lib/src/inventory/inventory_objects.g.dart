// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryCount _$InventoryCountFromJson(Map<String, dynamic> json) =>
    InventoryCount(
      catalogObjectId: json['catalog_object_id'] as String,
      catalogObjectType:
          $enumDecode(_$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      inventoryState:
          $enumDecode(_$InventoryStateEnumMap, json['inventory_state']),
      locationId: json['location_id'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      calculatedAt: DateTime.parse(json['calculated_at'] as String),
    );

Map<String, dynamic> _$InventoryCountToJson(InventoryCount instance) =>
    <String, dynamic>{
      'catalog_object_id': instance.catalogObjectId,
      'catalog_object_type':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'inventory_state': _$InventoryStateEnumMap[instance.inventoryState],
      'location_id': instance.locationId,
      'quantity': instance.quantity,
      'calculated_at': instance.calculatedAt.toIso8601String(),
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

InventoryChange _$InventoryChangeFromJson(Map<String, dynamic> json) =>
    InventoryChange(
      type: $enumDecode(_$InventoryChangeTypeEnumMap, json['type']),
      physicalCount: InventoryPhysicalCount.fromJson(
          json['physical_count'] as Map<String, dynamic>),
      adjustment: InventoryAdjustment.fromJson(
          json['adjustment'] as Map<String, dynamic>),
      transfer:
          InventoryTransfer.fromJson(json['transfer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InventoryChangeToJson(InventoryChange instance) =>
    <String, dynamic>{
      'type': _$InventoryChangeTypeEnumMap[instance.type],
      'physical_count': instance.physicalCount.toJson(),
      'adjustment': instance.adjustment.toJson(),
      'transfer': instance.transfer.toJson(),
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
      referenceId: json['reference_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      catalogObjectType:
          $enumDecode(_$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      state: $enumDecode(_$InventoryStateEnumMap, json['state']),
      locationId: json['location_id'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      source:
          SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employee_id'] as String,
      occurredAt: DateTime.parse(json['occurred_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryPhysicalCountToJson(
        InventoryPhysicalCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference_id': instance.referenceId,
      'catalog_object_id': instance.catalogObjectId,
      'catalog_object_type':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'state': _$InventoryStateEnumMap[instance.state],
      'location_id': instance.locationId,
      'quantity': instance.quantity,
      'source': instance.source.toJson(),
      'employee_id': instance.employeeId,
      'occurred_at': instance.occurredAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

InventoryAdjustment _$InventoryAdjustmentFromJson(Map<String, dynamic> json) =>
    InventoryAdjustment(
      id: json['id'] as String,
      referenceId: json['reference_id'] as String,
      fromState: $enumDecode(_$InventoryStateEnumMap, json['from_state']),
      toState: $enumDecode(_$InventoryStateEnumMap, json['to_state']),
      locationId: json['location_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      catalogObjectType:
          $enumDecode(_$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      quantity: (json['quantity'] as num).toDouble(),
      totalPriceMoney:
          Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
      occurredAt: DateTime.parse(json['occurred_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      source:
          SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employee_id'] as String,
      transactionId: json['transaction_id'] as String,
      refundId: json['refund_id'] as String,
      purchaseOrderId: json['purchase_order_id'] as String,
      goodsReceiptId: json['goods_receipt_id'] as String,
    );

Map<String, dynamic> _$InventoryAdjustmentToJson(
        InventoryAdjustment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference_id': instance.referenceId,
      'from_state': _$InventoryStateEnumMap[instance.fromState],
      'to_state': _$InventoryStateEnumMap[instance.toState],
      'location_id': instance.locationId,
      'catalog_object_id': instance.catalogObjectId,
      'catalog_object_type':
          _$CatalogObjectTypeEnumMap[instance.catalogObjectType],
      'quantity': instance.quantity,
      'total_price_money': instance.totalPriceMoney.toJson(),
      'occurred_at': instance.occurredAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'source': instance.source.toJson(),
      'employee_id': instance.employeeId,
      'transaction_id': instance.transactionId,
      'refund_id': instance.refundId,
      'purchase_order_id': instance.purchaseOrderId,
      'goods_receipt_id': instance.goodsReceiptId,
    };

InventoryTransfer _$InventoryTransferFromJson(Map<String, dynamic> json) =>
    InventoryTransfer(
      id: json['id'] as String,
      referenceId: json['reference_id'] as String,
      state: $enumDecode(_$InventoryStateEnumMap, json['state']),
      fromLocationId: json['from_location_id'] as String,
      toLocationId: json['to_location_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      catalogObjectType:
          $enumDecode(_$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      quantity: (json['quantity'] as num).toDouble(),
      occurredAt: DateTime.parse(json['occurred_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      source:
          SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      employeeId: json['employee_id'] as String,
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
      'occurred_at': instance.occurredAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'source': instance.source.toJson(),
      'employee_id': instance.employeeId,
    };

SourceApplication _$SourceApplicationFromJson(Map<String, dynamic> json) =>
    SourceApplication(
      product: $enumDecode(_$ProductEnumMap, json['product']),
      applicationId: json['application_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SourceApplicationToJson(SourceApplication instance) =>
    <String, dynamic>{
      'product': _$ProductEnumMap[instance.product],
      'application_id': instance.applicationId,
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
