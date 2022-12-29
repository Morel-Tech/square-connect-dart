import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_return.g.dart';

@JsonSerializable()
class OrderReturn extends Equatable {
  const OrderReturn({
    this.id,
    this.sourceOrderId,
    this.returnLineItems,
    this.returnServiceCharges,
    this.returnTaxes,
    this.returnDiscounts,
    this.roundingAdjustment,
    this.returnAmounts,
  });

  /// Converts a [Map] to an [OrderReturn]
  factory OrderReturn.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnFromJson(json);

  /// Converts a [OrderReturn] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnToJson(this);

  final String? id;
  final String? sourceOrderId;
  final List<OrderReturnLineItem>? returnLineItems;
  final List<OrderReturnServiceCharge>? returnServiceCharges;
  final List<OrderReturnTax>? returnTaxes;
  final List<OrderReturnDiscount>? returnDiscounts;
  final OrderRoundingAdjustment? roundingAdjustment;
  final OrderMoneyAmounts? returnAmounts;

  @override
  List<Object?> get props {
    return [
      id,
      sourceOrderId,
      returnLineItems,
      returnServiceCharges,
      returnTaxes,
      returnDiscounts,
      roundingAdjustment,
      returnAmounts,
    ];
  }
}
