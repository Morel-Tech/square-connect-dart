import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order.g.dart';

@JsonSerializable()
class Order extends Equatable {
  const Order({
    this.id,
    this.locationId,
    this.referenceId,
    this.source,
    this.customerId,
    this.lineItems,
    this.taxes,
    this.discounts,
    this.serviceCharges,
    this.fulfillments,
    this.returnAmounts,
    this.netAmounts,
    this.roundingAdjustment,
    this.createdAt,
    this.updatedAt,
    this.closedAt,
    this.state,
    this.totalMoney,
    this.totalTaxMoney,
    this.totalDiscountMoney,
    this.totalServiceChargeMoney,
    this.tenders,
    this.refunds,
    this.returns,
    this.version,
  });

  /// Converts a [Map] to an [Order]
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  /// Converts a [Order] to a [Map]
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  final String? id;
  final String? locationId;
  final String? referenceId;
  final OrderSource? source;
  final String? customerId;
  final List<OrderLineItem>? lineItems;
  final List<OrderLineItemTax>? taxes;
  final List<OrderLineItemDiscount>? discounts;
  final List<OrderServiceCharge>? serviceCharges;
  final List<OrderFulfillment>? fulfillments;
  final List<OrderReturn>? returns;
  final OrderMoneyAmounts? returnAmounts;
  final OrderMoneyAmounts? netAmounts;
  final OrderRoundingAdjustment? roundingAdjustment;
  final List<Tender>? tenders;
  final List<Refund>? refunds;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? closedAt;
  final OrderState? state;
  final Money? totalMoney;
  final Money? totalTaxMoney;
  final Money? totalDiscountMoney;
  final Money? totalServiceChargeMoney;
  final int? version;

  @override
  List<Object?> get props {
    return [
      id,
      locationId,
      referenceId,
      source,
      customerId,
      lineItems,
      taxes,
      discounts,
      serviceCharges,
      fulfillments,
      returns,
      returnAmounts,
      netAmounts,
      roundingAdjustment,
      tenders,
      refunds,
      createdAt,
      updatedAt,
      closedAt,
      state,
      totalMoney,
      totalTaxMoney,
      totalDiscountMoney,
      totalServiceChargeMoney,
      version,
    ];
  }
}
