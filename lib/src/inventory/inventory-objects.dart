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

  factory InventoryCount.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (catalogObjectType != null)
      body['catalog_object_type'] =
          getStringFromCatalogObjectType(catalogObjectType);
    if (inventoryState != null)
      body['state'] = getStringFromInventoryState(inventoryState);
    if (locationId != null) body['location_id'] = locationId;
    if (quantity != null) body['quantity'] = quantity.toString();
    if (calculatedAt != null) body['calculated_at'] = calculatedAt.toString();

    return body;
  }
}

class InventoryChange {
  final InventoryChangeType type;
  final InventoryPhysicalCount physicalCount;
  final InventoryAdjustment adjustment;
  final InventoryTransfer transfer;

  InventoryChange(
      {this.type, this.physicalCount, this.adjustment, this.transfer});

  factory InventoryChange.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (type != null) body['type'] = getStringFromInventoryChangeType(type);
    if (physicalCount != null) body['physical_count'] = physicalCount.toJson();
    if (adjustment != null) body['adjustment'] = adjustment.toJson();
    if (transfer != null) body['transfer'] = transfer.toJson();

    return body;
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

  factory InventoryPhysicalCount.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (catalogObjectType != null)
      body['catalog_object_type'] =
          getStringFromCatalogObjectType(catalogObjectType);
    if (state != null) body['state'] = getStringFromInventoryState(state);
    if (locationId != null) body['location_id'] = locationId;
    if (quantity != null) body['quantity'] = quantity.toString();
    if (source != null) body['source'] = source.toJson();
    if (employeeId != null) body['employee_id'] = employeeId;
    if (occurredAt != null) body['occurred_at'] = occurredAt.toString();
    if (createdAt != null) body['created_at'] = createdAt.toString();

    return body;
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

  factory InventoryAdjustment.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (fromState != null)
      body['from_state'] = getStringFromInventoryState(fromState);
    if (toState != null)
      body['to_state'] = getStringFromInventoryState(toState);
    if (locationId != null) body['location_id'] = locationId;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (catalogObjectType != null)
      body['catalog_object_type'] =
          getStringFromCatalogObjectType(catalogObjectType);
    if (quantity != null) body['quantity'] = quantity.toString();
    if (totalPriceMoney != null)
      body['total_price_money'] = totalPriceMoney.toJson();
    if (occurredAt != null) body['occurred_at'] = occurredAt.toString();
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (source != null) body['source'] = source.toJson();
    if (employeeId != null) body['employee_id'] = employeeId;
    if (transactionId != null) body['transaction_id'] = transactionId;
    if (refundId != null) body['refund_id'] = refundId;
    if (purchaseOrderId != null) body['purchase_order_id'] = purchaseOrderId;
    if (goodsReceiptId != null) body['goods_receipt_id'] = goodsReceiptId;

    return body;
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

  factory InventoryTransfer.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (state != null) body['state'] = getStringFromInventoryState(state);
    if (fromLocationId != null) body['from_location_id'] = fromLocationId;
    if (toLocationId != null) body['to_location_id'] = toLocationId;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (catalogObjectType != null)
      body['catalog_object_type'] =
          getStringFromCatalogObjectType(catalogObjectType);
    if (quantity != null) body['quantity'] = quantity.toString();
    if (occurredAt != null) body['occurred_at'] = occurredAt.toString();
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (source != null) body['source'] = source.toJson();
    if (employeeId != null) body['employee_id'] = employeeId;

    return body;
  }
}

class SourceApplication {
  final Product product;
  final String applicationId;
  final String name;

  SourceApplication({this.product, this.applicationId, this.name});

  factory SourceApplication.fromJson(Map<dynamic, dynamic> json) {
    return SourceApplication(
      product: json['product'] != null
          ? getProductFromString(json['product'])
          : null,
      applicationId: json['application_id'],
      name: json['name'],
    );
  }

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (product != null) body['product'] = getStringFromProduct(product);
    if (applicationId != null) body['application_id'] = applicationId;
    if (name != null) body['name'] = name;

    return body;
  }
}
