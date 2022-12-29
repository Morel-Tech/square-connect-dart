import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'inventory_physical_count.g.dart';

@JsonSerializable()
class InventoryPhysicalCount extends Equatable {
  const InventoryPhysicalCount({
    this.id,
    this.referenceId,
    this.catalogObjectId,
    this.catalogObjectType,
    this.state,
    this.locationId,
    this.quantity,
    this.source,
    this.employeeId,
    this.occurredAt,
    this.createdAt,
  });

  /// Converts a [Map] to an [InventoryPhysicalCount]
  factory InventoryPhysicalCount.fromJson(Map<String, dynamic> json) =>
      _$InventoryPhysicalCountFromJson(json);

  /// Converts a [InventoryPhysicalCount] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryPhysicalCountToJson(this);

  final String? id;
  final String? referenceId;
  final String? catalogObjectId;
  final CatalogObjectType? catalogObjectType;
  final InventoryState? state;
  final String? locationId;
  final double? quantity;
  final SourceApplication? source;
  final String? employeeId;
  final DateTime? occurredAt;
  final DateTime? createdAt;

  @override
  List<Object?> get props {
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
