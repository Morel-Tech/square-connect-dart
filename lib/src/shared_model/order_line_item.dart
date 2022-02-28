import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item.g.dart';

@JsonSerializable()
class OrderLineItem extends Equatable {
  const OrderLineItem({
    this.uid,
    this.name,
    required this.quantity,
    this.quantityUnit,
    this.note,
    this.catalogObjectId,
    this.variationName,
    this.modifiers,
    this.appliedDiscounts,
    this.appliedTaxes,
    this.basePriceMoney,
    this.variationTotalPriceMoney,
    this.grossSalesMoney,
    this.totalTaxMoney,
    this.totalDiscountMoney,
    this.totalMoney,
    this.itemType,
    this.metadata,
    this.pricingBlocklists,
  });

  /// Converts a [Map] to an [OrderLineItem]
  factory OrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemFromJson(json);

  /// Converts a [OrderLineItem] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemToJson(this);

  final String? uid;
  final String? name;
  final String quantity;
  final OrderQuantityUnit? quantityUnit;
  final String? note;
  final String? catalogObjectId;
  final String? variationName;
  final List<OrderLineItemModifier>? modifiers;
  final List<OrderLineItemTax>? appliedTaxes;
  final List<OrderLineItemDiscount>? appliedDiscounts;
  final Money? basePriceMoney;
  final Money? variationTotalPriceMoney;
  final Money? grossSalesMoney;
  final Money? totalTaxMoney;
  final Money? totalDiscountMoney;
  final Money? totalMoney;
  final OrderLineItemType? itemType;
  final Map<String, String>? metadata;

  /// Describes pricing adjustments that are blocked from manual and automatic
  /// application to a line item.
  final OrderLineItemPricingBlocklists? pricingBlocklists;

  @override
  List<Object?> get props => [
        uid,
        name,
        quantity,
        quantityUnit,
        note,
        catalogObjectId,
        variationName,
        modifiers,
        appliedTaxes,
        appliedDiscounts,
        basePriceMoney,
        variationTotalPriceMoney,
        grossSalesMoney,
        totalTaxMoney,
        totalDiscountMoney,
        totalMoney,
        itemType,
        metadata,
        pricingBlocklists,
      ];
}
