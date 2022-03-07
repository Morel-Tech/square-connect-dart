import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_item_variation.g.dart';

@JsonSerializable()
class CatalogItemVariation extends Equatable {
  const CatalogItemVariation({
    required this.itemId,
    required this.name,
    this.sku,
    this.upc,
    required this.ordinal,
    required this.pricingType,
    this.priceMoney,
    this.locationOverrides,
    this.trackInventory,
    this.inventoryAlertType,
    this.inventoryAlertThreshold,
    this.userData,
    this.serviceDuration,
    this.measurementUnitId,
    this.availableForBooking,
    this.itemOptionValue,
    this.stockable,
    this.stockableConversion,
    this.teamMemberIds,
    this.imageIds,
  });

  /// Converts a [Map] to an [CatalogItemVariation]
  factory CatalogItemVariation.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemVariationFromJson(json);

  /// Converts a [CatalogItemVariation] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemVariationToJson(this);

  final String itemId;
  final String name;
  final String? sku;
  final String? upc;
  final int ordinal;
  final CatalogPricingType pricingType;
  final Money? priceMoney;
  final List<ItemVariationLocationOverride>? locationOverrides;
  final bool? trackInventory;
  final InventoryAlertType? inventoryAlertType;
  final int? inventoryAlertThreshold;
  final String? userData;
  final int? serviceDuration;
  final String? measurementUnitId;
  final bool? availableForBooking;
  final List<CatalogItemOptionValueForItemVariation>? itemOptionValue;
  final bool? stockable;
  final CatalogStockConversion? stockableConversion;
  final List<String>? teamMemberIds;
  final List<String>? imageIds;

  @override
  List<Object?> get props {
    return [
      itemId,
      name,
      sku,
      upc,
      ordinal,
      pricingType,
      priceMoney,
      locationOverrides,
      trackInventory,
      inventoryAlertType,
      inventoryAlertThreshold,
      userData,
      serviceDuration,
      measurementUnitId,
      imageIds,
    ];
  }
}
