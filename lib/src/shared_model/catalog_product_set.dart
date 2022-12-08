import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_product_set.g.dart';

@JsonSerializable()
class CatalogProductSet extends Equatable {
  const CatalogProductSet({
    this.name,
    this.productIdsAny,
    this.productIdsAll,
    this.quantityExact,
    this.quantityMin,
    this.quantityMax,
    this.allProducts,
  });

  /// Converts a [Map] to an [CatalogProductSet]
  factory CatalogProductSet.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductSetFromJson(json);

  /// Converts a [CatalogProductSet] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogProductSetToJson(this);

  final String? name;
  final List<String>? productIdsAny;
  final List<String>? productIdsAll;
  final int? quantityExact;
  final int? quantityMin;
  final int? quantityMax;
  final bool? allProducts;

  @override
  List<Object?> get props => [
        name,
        productIdsAny,
        productIdsAll,
        quantityExact,
        quantityMin,
        quantityMax,
        allProducts,
      ];
}
