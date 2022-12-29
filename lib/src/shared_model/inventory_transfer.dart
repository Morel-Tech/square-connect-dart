import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'inventory_transfer.g.dart';

@JsonSerializable()
class InventoryTransfer extends Equatable {
  const InventoryTransfer({
    this.id,
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
    this.employeeId,
  });

  /// Converts a [Map] to an [InventoryTransfer]
  factory InventoryTransfer.fromJson(Map<String, dynamic> json) =>
      _$InventoryTransferFromJson(json);

  /// Converts a [InventoryTransfer] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryTransferToJson(this);

  final String? id;
  final String? referenceId;
  final InventoryState? state;
  final String? fromLocationId;
  final String? toLocationId;
  final String? catalogObjectId;
  final CatalogObjectType? catalogObjectType;
  final double? quantity;
  final DateTime? occurredAt;
  final DateTime? createdAt;
  final SourceApplication? source;
  final String? employeeId;

  @override
  List<Object?> get props {
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
