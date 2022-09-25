import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_stock_conversion.g.dart';

@JsonSerializable()
class CatalogStockConversion extends Equatable {
  const CatalogStockConversion({
    required this.nonstockableQuantity,
    required this.stockableItemVariationId,
    required this.stockableQuantity,
  });

  /// Converts a [Map] to an [CatalogStockConversion]
  factory CatalogStockConversion.fromJson(Map<String, dynamic> json) =>
      _$CatalogStockConversionFromJson(json);

  /// Converts a [CatalogStockConversion] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogStockConversionToJson(this);

  final String nonstockableQuantity;
  final String stockableItemVariationId;
  final String stockableQuantity;

  @override
  List<Object?> get props => [
        nonstockableQuantity,
        stockableItemVariationId,
        stockableQuantity,
      ];
}
