import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_discount.g.dart';

@JsonSerializable()
class CatalogDiscount extends Equatable {
  const CatalogDiscount({
    this.name,
    this.discountType,
    this.percentage,
    this.amountMoney,
    this.pinRequired,
    this.labelColor,
  });

  /// Converts a [Map] to an [CatalogDiscount]
  factory CatalogDiscount.fromJson(Map<String, dynamic> json) =>
      _$CatalogDiscountFromJson(json);

  /// Converts a [CatalogDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogDiscountToJson(this);

  final String? name;
  final CatalogDiscountType? discountType;
  final String? percentage;
  final Money? amountMoney;
  final bool? pinRequired;
  final String? labelColor;

  @override
  List<Object?> get props {
    return [
      name,
      discountType,
      percentage,
      amountMoney,
      pinRequired,
      labelColor,
    ];
  }
}
