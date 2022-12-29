// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_adjustment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryAdjustment _$InventoryAdjustmentFromJson(Map<String, dynamic> json) =>
    InventoryAdjustment(
      id: json['id'] as String?,
      referenceId: json['reference_id'] as String?,
      fromState:
          $enumDecodeNullable(_$InventoryStateEnumMap, json['from_state']),
      toState: $enumDecodeNullable(_$InventoryStateEnumMap, json['to_state']),
      locationId: json['location_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogObjectType: $enumDecodeNullable(
          _$CatalogObjectTypeEnumMap, json['catalog_object_type']),
      quantity: (json['quantity'] as num?)?.toDouble(),
      totalPriceMoney: json['total_price_money'] == null
          ? null
          : Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
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
      transactionId: json['transaction_id'] as String?,
      refundId: json['refund_id'] as String?,
      purchaseOrderId: json['purchase_order_id'] as String?,
      goodsReceiptId: json['goods_receipt_id'] as String?,
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
      'total_price_money': instance.totalPriceMoney?.toJson(),
      'occurred_at': instance.occurredAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'source': instance.source?.toJson(),
      'employee_id': instance.employeeId,
      'transaction_id': instance.transactionId,
      'refund_id': instance.refundId,
      'purchase_order_id': instance.purchaseOrderId,
      'goods_receipt_id': instance.goodsReceiptId,
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
