import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'item_location_override.g.dart';

@JsonSerializable()
class ItemVariationLocationOverride extends Equatable {
  const ItemVariationLocationOverride({
    required this.locationId,
    this.priceMoney,
    this.pricingType,
    this.trackInventory,
    this.inventoryAlertType,
    this.inventoryAlertThreshold,
  });

  /// Converts a [Map] to an [ItemVariationLocationOverride]
  factory ItemVariationLocationOverride.fromJson(Map<String, dynamic> json) =>
      _$ItemVariationLocationOverrideFromJson(json);

  /// Converts a [ItemVariationLocationOverride] to a [Map]
  Map<String, dynamic> toJson() => _$ItemVariationLocationOverrideToJson(this);

  final String locationId;
  final Money? priceMoney;
  final CatalogPricingType? pricingType;
  final bool? trackInventory;
  final InventoryAlertType? inventoryAlertType;
  final int? inventoryAlertThreshold;

  @override
  List<Object?> get props {
    return [
      locationId,
      priceMoney,
      pricingType,
      trackInventory,
      inventoryAlertType,
      inventoryAlertThreshold,
    ];
  }
}
