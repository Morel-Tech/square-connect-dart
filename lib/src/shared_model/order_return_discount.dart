import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_return_discount.g.dart';

@JsonSerializable()
class OrderReturnDiscount extends Equatable {
  const OrderReturnDiscount({
    this.id,
    this.sourceDiscountId,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.scope,
  });

  /// Converts a [Map] to an [OrderReturnDiscount]
  factory OrderReturnDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnDiscountFromJson(json);

  /// Converts a [OrderReturnDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnDiscountToJson(this);

  final String? id;
  final String? sourceDiscountId;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemDiscountType? type;
  final double? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final OrderLineItemDiscountScope? scope;

  @override
  List<Object?> get props {
    return [
      id,
      sourceDiscountId,
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
