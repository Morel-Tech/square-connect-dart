import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item_tax.g.dart';

@JsonSerializable()
class OrderLineItemTax extends Equatable {
  const OrderLineItemTax({
    required this.uid,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.appliedMoney,
    this.scope,
    this.autoApplied,
    this.metadata,
  });

  /// Converts a [Map] to an [OrderLineItemTax]
  factory OrderLineItemTax.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemTaxFromJson(json);

  /// Converts a [OrderLineItemTax] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemTaxToJson(this);

  final String uid;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemTaxType? type;
  final double? percentage;
  final Map<String, String>? metadata;
  final Money? appliedMoney;
  final OrderLineItemTaxScope? scope;
  final bool? autoApplied;

  @override
  List<Object?> get props {
    return [
      uid,
      catalogObjectId,
      name,
      type,
      percentage,
      appliedMoney,
      scope,
      metadata,
      autoApplied,
    ];
  }
}
