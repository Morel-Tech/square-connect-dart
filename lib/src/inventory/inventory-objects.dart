import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/catalog/catalog-enums-converter.dart';
import 'package:square_connect/src/inventory/inventory-enums-converter.dart';

class InventoryCount {
  final String catalogObjectId;
  final CatalogObjectType catalogObjectType;
  final InventoryState inventoryState;
  final String locationId;
  final double quantity;
  final DateTime calculatedAt;

  InventoryCount({
    this.catalogObjectId,
    this.catalogObjectType,
    this.inventoryState,
    this.locationId,
    this.quantity,
    this.calculatedAt,
  });

  factory InventoryCount.fromJson(Map<String, dynamic> json) {
    return InventoryCount(
      catalogObjectId: json['catalog_object_id'],
      catalogObjectType: json['catalog_object_type'] != null
          ? getCatalogObjectTypeFromString(json['catalog_object_type'])
          : null,
      inventoryState: json['state'] != null
          ? getInventoryStateFromString(json['state'])
          : null,
      locationId: json['location_id'],
      quantity:
          json['quantity'] != null ? double.parse(json['quantity']) : null,
      calculatedAt: json['calculated_at'] != null
          ? DateTime.parse(json['calculated_at'])
          : null,
    );
  }
}

class InventoryChange {
  final InventoryChangeType type;
  final InventoryPhysicalCount physicalCount;
  final InventoryAdjustment adjustment;
  final InventoryTransfer transfer;

  InventoryChange(
      {this.type, this.physicalCount, this.adjustment, this.transfer});

  factory InventoryChange.fromJson(Map<String, dynamic> json) {
    return InventoryChange(
      type: json['type'] != null
          ? getInventoryChangeTypeFromString(json['type'])
          : null,
      physicalCount: json['physical_count'] != null
          ? InventoryPhysicalCount.fromJson(json['physical_count'])
          : null,
      adjustment: json['adjustment'] != null
          ? InventoryAdjustment.fromJson(json['adjustment'])
          : null,
      transfer: json['transfer'] != null
          ? InventoryTransfer.fromJson(json['transfer'])
          : null,
    );
  }
}

class InventoryPhysicalCount {
  final String id;
  final String referenceId;
  final String catalogObjectId;
  final CatalogObjectType catalogObjectType;
  final InventoryState state;
  final String locationId;
  final double quantity;
  final SourceApplication source;
  final String employeeId;
  final DateTime occurredAt;
  final DateTime createdAt;

  InventoryPhysicalCount(
      {this.id,
      this.referenceId,
      this.catalogObjectId,
      this.catalogObjectType,
      this.state,
      this.locationId,
      this.quantity,
      this.source,
      this.employeeId,
      this.occurredAt,
      this.createdAt});

  factory InventoryPhysicalCount.fromJson(Map<String, dynamic> json) {
    return InventoryPhysicalCount(
      id: json['id'],
      referenceId: json['reference_id'],
      catalogObjectId: json['catalog_object_id'],
      catalogObjectType: json['catalog_object_type'] != null
          ? getCatalogObjectTypeFromString(json['catalog_object_type'])
          : null,
      state: json['state'] != null
          ? getInventoryStateFromString(json['state'])
          : null,
      locationId: json['location_id'],
      quantity:
          json['quantity'] != null ? double.parse(json['quantity']) : null,
      source: json['source'] != null
          ? SourceApplication.fromJson(json['source'])
          : null,
      employeeId: json['employee_id'],
      occurredAt: json['occurred_at'] != null
          ? DateTime.parse(json['occurred_at'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
    );
  }
}

class InventoryAdjustment {
  final String id;
  final String referenceId;
  final InventoryState fromState;
  final InventoryState toState;
  final String locationId;
  final String catalogObjectId;
  final CatalogObjectType catalogObjectType;
  final double quantity;
  final Money totalPriceMoney;
  final DateTime occurredAt;
  final DateTime createdAt;
  final SourceApplication source;
  final String employeeId;
  final String transactionId;
  final String refundId;
  final String purchaseOrderId;
  final String goodsReceiptId;

  InventoryAdjustment(
      {this.id,
      this.referenceId,
      this.fromState,
      this.toState,
      this.locationId,
      this.catalogObjectId,
      this.catalogObjectType,
      this.quantity,
      this.totalPriceMoney,
      this.occurredAt,
      this.createdAt,
      this.source,
      this.employeeId,
      this.transactionId,
      this.refundId,
      this.purchaseOrderId,
      this.goodsReceiptId});

  factory InventoryAdjustment.fromJson(Map<String, dynamic> json) {
    return InventoryAdjustment(
      id: json['id'],
      referenceId: json['reference_id'],
      fromState: json['from_state'] != null
          ? getInventoryStateFromString(json['from_state'])
          : null,
      toState: json['to_state'] != null
          ? getInventoryStateFromString(json['to_state'])
          : null,
      locationId: json['location_id'],
      catalogObjectId: json['catalog_object_id'],
      catalogObjectType: json['catalog_object_type'] != null
          ? getCatalogObjectTypeFromString(json['catalog_object_type'])
          : null,
      quantity:
          json['quantity'] != null ? double.parse(json['quantity']) : null,
      totalPriceMoney: json['total_price_money'] != null
          ? Money.fromJson(json['total_price_money'])
          : null,
      occurredAt: json['occurred_at'] != null
          ? DateTime.parse(json['occurred_at'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      source: json['source'] != null
          ? SourceApplication.fromJson(json['source'])
          : null,
      employeeId: json['employee_id'],
      transactionId: json['transaction_id'],
      refundId: json['refund_id'],
      purchaseOrderId: json['purchase_order_id'],
      goodsReceiptId: json['goods_receipt_id'],
    );
  }
}

class InventoryTransfer {
  final String id;
  final String referenceId;
  final InventoryState state;
  final String fromLocationId;
  final String toLocationId;
  final String catalogObjectId;
  final CatalogObjectType catalogObjectType;
  final double quantity;
  final DateTime occurredAt;
  final DateTime createdAt;
  final SourceApplication source;
  final String employeeId;

  InventoryTransfer(
      {this.id,
      this.referenceId,
      this.state,
      this.fromLocationId,
      this.toLocationId,
      this.catalogObjectId,
      this.catalogObjectType,
      this.quantity,
      this.occurredAt,
      this.createdAt,
      this.source,
      this.employeeId});

  factory InventoryTransfer.fromJson(Map<String, dynamic> json) {
    return InventoryTransfer(
      id: json['id'],
      referenceId: json['reference_id'],
      state: json['state'] != null
          ? getInventoryStateFromString(json['state'])
          : null,
      fromLocationId: json['from_location_id'],
      toLocationId: json['to_location_id'],
      catalogObjectId: json['catalog_object_id'],
      catalogObjectType: json['catalog_object_type'] != null
          ? getCatalogObjectTypeFromString(json['catalog_object_type'])
          : null,
      quantity:
          json['quantity'] != null ? double.parse(json['quantity']) : null,
      occurredAt: json['occurred_at'] != null
          ? DateTime.parse(json['occurred_at'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      source: json['source'] != null
          ? SourceApplication.fromJson(json['source'])
          : null,
      employeeId: json['employee_id'],
    );
  }
}

class SourceApplication {
  final Product product;
  final String applicationId;
  final String name;

  SourceApplication({this.product, this.applicationId, this.name});

  factory SourceApplication.fromJson(Map<String, dynamic> json) {
    return SourceApplication(
      product: json['product'] != null
          ? getProductFromString(json['product'])
          : null,
      applicationId: json['application_id'],
      name: json['name'],
    );
  }
}
