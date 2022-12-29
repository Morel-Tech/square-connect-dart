import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_money_amounts.g.dart';

@JsonSerializable()
class OrderMoneyAmounts extends Equatable {
  const OrderMoneyAmounts({
    this.totalMoney,
    this.taxMoney,
    this.discountMoney,
    this.tipMoney,
    this.serviceChargeMoney,
  });

  /// Converts a [Map] to an [OrderMoneyAmounts]
  factory OrderMoneyAmounts.fromJson(Map<String, dynamic> json) =>
      _$OrderMoneyAmountsFromJson(json);

  /// Converts a [OrderMoneyAmounts] to a [Map]
  Map<String, dynamic> toJson() => _$OrderMoneyAmountsToJson(this);

  final Money? totalMoney;
  final Money? taxMoney;
  final Money? discountMoney;
  final Money? tipMoney;
  final Money? serviceChargeMoney;

  @override
  List<Object?> get props {
    return [
      totalMoney,
      taxMoney,
      discountMoney,
      tipMoney,
      serviceChargeMoney,
    ];
  }
}
