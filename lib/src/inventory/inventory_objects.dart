import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'inventory_objects.g.dart';

@JsonSerializable()
class InventoryCount extends Equatable {
  const InventoryCount({
    required this.catalogObjectId,
    required this.catalogObjectType,
    required this.inventoryState,
    required this.locationId,
    required this.quantity,
    required this.calculatedAt,
  });

  /// Converts a [Map] to an [InventoryCount]
  factory InventoryCount.fromJson(Map<String, dynamic> json) =>
      _$InventoryCountFromJson(json);

  /// Converts a [InventoryCount] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryCountToJson(this);

  final String catalogObjectId;
  final CatalogObjectType catalogObjectType;
  final InventoryState inventoryState;
  final String locationId;
  final double quantity;
  final DateTime calculatedAt;

  @override
  List<Object> get props {
    return [
      catalogObjectId,
      catalogObjectType,
      inventoryState,
      locationId,
      quantity,
      calculatedAt,
    ];
  }
}

@JsonSerializable()
class InventoryChange extends Equatable {
  const InventoryChange({
    required this.type,
    required this.physicalCount,
    required this.adjustment,
    required this.transfer,
  });

  /// Converts a [Map] to an [InventoryChange]
  factory InventoryChange.fromJson(Map<String, dynamic> json) =>
      _$InventoryChangeFromJson(json);

  /// Converts a [InventoryChange] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryChangeToJson(this);

  final InventoryChangeType type;
  final InventoryPhysicalCount physicalCount;
  final InventoryAdjustment adjustment;
  final InventoryTransfer transfer;

  @override
  List<Object> get props => [type, physicalCount, adjustment, transfer];
}

@JsonSerializable()
class InventoryPhysicalCount extends Equatable {
  const InventoryPhysicalCount({
    required this.id,
    required this.referenceId,
    required this.catalogObjectId,
    required this.catalogObjectType,
    required this.state,
    required this.locationId,
    required this.quantity,
    required this.source,
    required this.employeeId,
    required this.occurredAt,
    required this.createdAt,
  });

  /// Converts a [Map] to an [InventoryPhysicalCount]
  factory InventoryPhysicalCount.fromJson(Map<String, dynamic> json) =>
      _$InventoryPhysicalCountFromJson(json);

  /// Converts a [InventoryPhysicalCount] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryPhysicalCountToJson(this);

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

  @override
  List<Object> get props {
    return [
      id,
      referenceId,
      catalogObjectId,
      catalogObjectType,
      state,
      locationId,
      quantity,
      source,
      employeeId,
      occurredAt,
      createdAt,
    ];
  }
}

@JsonSerializable()
class InventoryAdjustment extends Equatable {
  const InventoryAdjustment({
    required this.id,
    required this.referenceId,
    required this.fromState,
    required this.toState,
    required this.locationId,
    required this.catalogObjectId,
    required this.catalogObjectType,
    required this.quantity,
    required this.totalPriceMoney,
    required this.occurredAt,
    required this.createdAt,
    required this.source,
    required this.employeeId,
    required this.transactionId,
    required this.refundId,
    required this.purchaseOrderId,
    required this.goodsReceiptId,
  });

  /// Converts a [Map] to an [InventoryAdjustment]
  factory InventoryAdjustment.fromJson(Map<String, dynamic> json) =>
      _$InventoryAdjustmentFromJson(json);

  /// Converts a [InventoryAdjustment] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryAdjustmentToJson(this);

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

  @override
  List<Object> get props {
    return [
      id,
      referenceId,
      fromState,
      toState,
      locationId,
      catalogObjectId,
      catalogObjectType,
      quantity,
      totalPriceMoney,
      occurredAt,
      createdAt,
      source,
      employeeId,
      transactionId,
      refundId,
      purchaseOrderId,
      goodsReceiptId,
    ];
  }
}

@JsonSerializable()
class InventoryTransfer extends Equatable {
  const InventoryTransfer({
    required this.id,
    required this.referenceId,
    required this.state,
    required this.fromLocationId,
    required this.toLocationId,
    required this.catalogObjectId,
    required this.catalogObjectType,
    required this.quantity,
    required this.occurredAt,
    required this.createdAt,
    required this.source,
    required this.employeeId,
  });

  /// Converts a [Map] to an [InventoryTransfer]
  factory InventoryTransfer.fromJson(Map<String, dynamic> json) =>
      _$InventoryTransferFromJson(json);

  /// Converts a [InventoryTransfer] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryTransferToJson(this);

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

  @override
  List<Object> get props {
    return [
      id,
      referenceId,
      state,
      fromLocationId,
      toLocationId,
      catalogObjectId,
      catalogObjectType,
      quantity,
      occurredAt,
      createdAt,
      source,
      employeeId,
    ];
  }
}

@JsonSerializable()
class SourceApplication extends Equatable {
  const SourceApplication({
    required this.product,
    required this.applicationId,
    required this.name,
  });

  /// Converts a [Map] to an [SourceApplication]
  factory SourceApplication.fromJson(Map<String, dynamic> json) =>
      _$SourceApplicationFromJson(json);

  /// Converts a [SourceApplication] to a [Map]
  Map<String, dynamic> toJson() => _$SourceApplicationToJson(this);

  final Product product;
  final String applicationId;
  final String name;

  @override
  List<Object> get props => [product, applicationId, name];
}
