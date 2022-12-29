import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_return_line_item.g.dart';

@JsonSerializable()
class OrderReturnLineItem extends Equatable {
  const OrderReturnLineItem({
    this.id,
    this.sourceLineItemId,
    this.name,
    this.quantity,
    this.quantityUnit,
    this.note,
    this.catalogObjectId,
    this.variationName,
    this.returnModifiers,
    this.returnTaxes,
    this.returnDiscounts,
    this.basePriceMoney,
    this.variationTotalPriceMoney,
    this.grossReturnMoney,
    this.totalTaxMoney,
    this.totalDiscountMoney,
    this.totalMoney,
  });

  /// Converts a [Map] to an [OrderReturnLineItem]
  factory OrderReturnLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemFromJson(json);

  /// Converts a [OrderReturnLineItem] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnLineItemToJson(this);

  final String? id;
  final String? sourceLineItemId;
  final String? name;
  final double? quantity;
  final OrderQuantityUnit? quantityUnit;
  final String? note;
  final String? catalogObjectId;
  final String? variationName;
  final List<OrderReturnLineItemModifier>? returnModifiers;
  final List<OrderReturnTax>? returnTaxes;
  final List<OrderReturnDiscount>? returnDiscounts;
  final Money? basePriceMoney;
  final Money? variationTotalPriceMoney;
  final Money? grossReturnMoney;
  final Money? totalTaxMoney;
  final Money? totalDiscountMoney;
  final Money? totalMoney;

  @override
  List<Object?> get props {
    return [
      id,
      sourceLineItemId,
      name,
      quantity,
      quantityUnit,
      note,
      catalogObjectId,
      variationName,
      returnModifiers,
      returnTaxes,
      returnDiscounts,
      basePriceMoney,
      variationTotalPriceMoney,
      grossReturnMoney,
      totalTaxMoney,
      totalDiscountMoney,
      totalMoney,
    ];
  }
}
