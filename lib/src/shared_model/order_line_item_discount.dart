import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item_discount.g.dart';

@JsonSerializable()
class OrderLineItemDiscount extends Equatable {
  const OrderLineItemDiscount({
    this.uid,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.scope,
  });

  /// Converts a [Map] to an [OrderLineItemDiscount]
  factory OrderLineItemDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemDiscountFromJson(json);

  /// Converts a [OrderLineItemDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemDiscountToJson(this);

  final String? uid;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemDiscountType? type;
  final String? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final OrderLineItemDiscountScope? scope;

  @override
  List<Object?> get props {
    return [
      uid,
      catalogObjectId,
      name,
      type,
      percentage,
      amountMoney,
      appliedMoney,
      scope,
    ];
  }
}
