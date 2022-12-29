import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_return_service_charge.g.dart';

@JsonSerializable()
class OrderReturnServiceCharge extends Equatable {
  const OrderReturnServiceCharge({
    this.id,
    this.sourceServiceChargeId,
    this.catalogObjectId,
    this.name,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.totalMoney,
    this.totalTaxMoney,
    this.calculationPhase,
    this.taxable,
    this.returnTaxes,
  });

  /// Converts a [Map] to an [OrderReturnServiceCharge]
  factory OrderReturnServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnServiceChargeFromJson(json);

  /// Converts a [OrderReturnServiceCharge] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnServiceChargeToJson(this);

  final String? id;
  final String? sourceServiceChargeId;
  final String? catalogObjectId;
  final String? name;
  final String? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final Money? totalMoney;
  final Money? totalTaxMoney;
  final OrderServiceChargeCalculationPhase? calculationPhase;
  final bool? taxable;
  final List<OrderReturnTax>? returnTaxes;

  @override
  List<Object?> get props {
    return [
      id,
      sourceServiceChargeId,
      catalogObjectId,
      name,
      percentage,
      amountMoney,
      appliedMoney,
      totalMoney,
      totalTaxMoney,
      calculationPhase,
      taxable,
      returnTaxes,
    ];
  }
}
