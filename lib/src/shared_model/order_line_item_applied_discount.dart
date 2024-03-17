import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item_applied_discount.g.dart';

@JsonSerializable()
class OrderLineItemAppliedDiscount extends Equatable {
  const OrderLineItemAppliedDiscount({
    required this.discountUid,
    this.uid,
    this.appliedMoney,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [OrderLineItemAppliedDiscount]
  factory OrderLineItemAppliedDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemAppliedDiscountFromJson(json);

  /// Converts a [OrderLineItemAppliedDiscount] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$OrderLineItemAppliedDiscountToJson(this);

  final String? uid;
  final String discountUid;
  final Money? appliedMoney;

  @override
  List<Object?> get props => [uid, discountUid, appliedMoney];
}
