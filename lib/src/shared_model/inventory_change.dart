import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'inventory_change.g.dart';

@JsonSerializable()
class InventoryChange extends Equatable {
  const InventoryChange({
    required this.type,
    this.physicalCount,
    this.adjustment,
    this.transfer,
  });

  /// Converts a [Map] to an [InventoryChange]
  factory InventoryChange.fromJson(Map<String, dynamic> json) =>
      _$InventoryChangeFromJson(json);

  /// Converts a [InventoryChange] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryChangeToJson(this);

  final InventoryChangeType type;
  final InventoryPhysicalCount? physicalCount;
  final InventoryAdjustment? adjustment;
  final InventoryTransfer? transfer;

  @override
  List<Object?> get props => [type, physicalCount, adjustment, transfer];
}
