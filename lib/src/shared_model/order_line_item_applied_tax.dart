import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item_applied_tax.g.dart';

@JsonSerializable()
class OrderLineItemAppliedTax extends Equatable {
  const OrderLineItemAppliedTax({
    required this.taxUid,
    this.uid,
    this.appliedMoney,
  });

  /// Converts a [Map] to an [OrderLineItemAppliedTax]
  factory OrderLineItemAppliedTax.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemAppliedTaxFromJson(json);

  /// Converts a [OrderLineItemAppliedTax] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemAppliedTaxToJson(this);

  final String? uid;
  final String taxUid;
  final Money? appliedMoney;

  @override
  List<Object?> get props => [uid, taxUid, appliedMoney];
}
