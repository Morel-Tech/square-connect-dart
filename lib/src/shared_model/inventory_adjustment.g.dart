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

Map<String, dynamic> _$InventoryAdjustmentToJson(InventoryAdjustment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('from_state', _$InventoryStateEnumMap[instance.fromState]);
  writeNotNull('to_state', _$InventoryStateEnumMap[instance.toState]);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_object_type',
      _$CatalogObjectTypeEnumMap[instance.catalogObjectType]);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('total_price_money', instance.totalPriceMoney?.toJson());
  writeNotNull('occurred_at', instance.occurredAt?.toIso8601String());
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('employee_id', instance.employeeId);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('refund_id', instance.refundId);
  writeNotNull('purchase_order_id', instance.purchaseOrderId);
  writeNotNull('goods_receipt_id', instance.goodsReceiptId);
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
