import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'inventory_adjustment.g.dart';

@JsonSerializable()
class InventoryAdjustment extends Equatable {
  const InventoryAdjustment({
    this.id,
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
    this.goodsReceiptId,
  });

  /// Converts a [Map] to an [InventoryAdjustment]
  factory InventoryAdjustment.fromJson(Map<String, dynamic> json) =>
      _$InventoryAdjustmentFromJson(json);

  /// Converts a [InventoryAdjustment] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryAdjustmentToJson(this);

  final String? id;
  final String? referenceId;
  final InventoryState? fromState;
  final InventoryState? toState;
  final String? locationId;
  final String? catalogObjectId;
  final CatalogObjectType? catalogObjectType;
  final double? quantity;
  final Money? totalPriceMoney;
  final DateTime? occurredAt;
  final DateTime? createdAt;
  final SourceApplication? source;
  final String? employeeId;
  final String? transactionId;
  final String? refundId;
  final String? purchaseOrderId;
  final String? goodsReceiptId;

  @override
  List<Object?> get props {
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
