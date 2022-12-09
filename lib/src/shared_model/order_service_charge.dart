import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_service_charge.g.dart';

@JsonSerializable()
class OrderServiceCharge extends Equatable {
  const OrderServiceCharge({
    required this.uid,
    this.name,
    this.catalogObjectId,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.totalMoney,
    this.totalTaxMoney,
    this.calculationPhase,
    this.taxable,
    this.taxes,
  });

  /// Converts a [Map] to an [OrderServiceCharge]
  factory OrderServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderServiceChargeFromJson(json);

  /// Converts a [OrderServiceCharge] to a [Map]
  Map<String, dynamic> toJson() => _$OrderServiceChargeToJson(this);

  final String uid;
  final String? name;
  final String? catalogObjectId;
  final String? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final Money? totalMoney;
  final Money? totalTaxMoney;
  final OrderServiceChargeCalculationPhase? calculationPhase;
  final bool? taxable;
  final List<OrderLineItemTax>? taxes;

  @override
  List<Object?> get props {
    return [
      uid,
      name,
      catalogObjectId,
      percentage,
      amountMoney,
      appliedMoney,
      totalMoney,
      totalTaxMoney,
      calculationPhase,
      taxable,
      taxes,
    ];
  }
}
