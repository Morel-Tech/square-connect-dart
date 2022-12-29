import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_return_tax.g.dart';

@JsonSerializable()
class OrderReturnTax extends Equatable {
  const OrderReturnTax({
    this.id,
    this.sourceTaxId,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.appliedMoney,
    this.scope,
  });

  /// Converts a [Map] to an [OrderReturnTax]
  factory OrderReturnTax.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnTaxFromJson(json);

  /// Converts a [OrderReturnTax] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnTaxToJson(this);

  final String? id;
  final String? sourceTaxId;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemTaxType? type;
  final String? percentage;
  final Money? appliedMoney;
  final OrderLineItemTaxScope? scope;

  @override
  List<Object?> get props {
    return [
      id,
      sourceTaxId,
      catalogObjectId,
      name,
      type,
      percentage,
      appliedMoney,
      scope,
    ];
  }
}
