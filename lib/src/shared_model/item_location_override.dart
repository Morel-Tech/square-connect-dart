import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'item_location_override.g.dart';

@JsonSerializable()
class ItemVariationLocationOverrides extends Equatable {
  const ItemVariationLocationOverrides({
    required this.locationId,
    this.priceMoney,
    this.pricingType,
    this.trackInventory,
    this.inventoryAlertType,
    this.inventoryAlertThreshold,
    this.soldOut,
    this.soldOutValidUntil,
  });

  /// Converts a [Map] to an [ItemVariationLocationOverrides]
  factory ItemVariationLocationOverrides.fromJson(Map<String, dynamic> json) =>
      _$ItemVariationLocationOverridesFromJson(json);

  /// Converts a [ItemVariationLocationOverrides] to a [Map]
  Map<String, dynamic> toJson() => _$ItemVariationLocationOverridesToJson(this);

  final String locationId;
  final Money? priceMoney;
  final CatalogPricingType? pricingType;
  final bool? trackInventory;
  final InventoryAlertType? inventoryAlertType;
  final int? inventoryAlertThreshold;
  final bool? soldOut;
  final String? soldOutValidUntil;

  @override
  List<Object?> get props {
    return [
      locationId,
      priceMoney,
      pricingType,
      trackInventory,
      inventoryAlertType,
      inventoryAlertThreshold,
      soldOut,
      soldOutValidUntil,
    ];
  }
}
