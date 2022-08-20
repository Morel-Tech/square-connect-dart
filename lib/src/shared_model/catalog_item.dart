import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_item.g.dart';

@JsonSerializable()
class CatalogItem extends Equatable {
  const CatalogItem({
    this.name,
    this.description,
    this.abbreviation,
    this.labelColor,
    this.availableOnline,
    this.availableForPickup,
    this.availableElectronically,
    this.categoryId,
    this.taxIds,
    this.modifierListInfo,
    this.variations,
    this.productType,
    this.skipModifierScreen,
    this.itemOptions,
    this.sortName,
    this.imageIds,
  });

  /// Converts a [Map] to an [CatalogItem]
  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);

  /// Converts a [CatalogItem] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemToJson(this);

  final String? name;
  final String? description;
  final String? abbreviation;
  final String? labelColor;
  final bool? availableOnline;
  final bool? availableForPickup;
  final bool? availableElectronically;
  final String? categoryId;
  final List<String>? taxIds;
  final List<CatalogItemModifierListInfo>? modifierListInfo;
  final List<CatalogObject>? variations;
  final CatalogItemProductType? productType;
  final bool? skipModifierScreen;
  final List<CatalogItemOptionForItem>? itemOptions;
  final String? sortName;
  final List<String>? imageIds;

  @override
  List<Object?> get props {
    return [
      name,
      description,
      abbreviation,
      labelColor,
      availableOnline,
      availableForPickup,
      availableElectronically,
      categoryId,
      taxIds,
      modifierListInfo,
      variations,
      productType,
      skipModifierScreen,
      itemOptions,
      sortName,
      imageIds,
    ];
  }
}
