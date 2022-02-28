import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item_pricing_blocklists.g.dart';

@JsonSerializable()
class OrderLineItemPricingBlocklists extends Equatable {
  const OrderLineItemPricingBlocklists({
    this.blockedDiscounts,
    this.blockedTaxes,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [OrderLineItemPricingBlocklists]
  factory OrderLineItemPricingBlocklists.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemPricingBlocklistsFromJson(json);

  /// Converts a [OrderLineItemPricingBlocklists] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$OrderLineItemPricingBlocklistsToJson(this);

  /// A list of discounts blocked from applying to the line item. Discounts can
  /// be blocked by the discount_uid (for ad hoc discounts) or the
  /// discount_catalog_object_id (for catalog discounts).
  final List<OrderLineItemPricingBlocklistsBlockedDiscount>? blockedDiscounts;

  /// A list of taxes blocked from applying to the line item. Taxes can be
  /// blocked by the tax_uid (for ad hoc taxes) or the tax_catalog_object_id
  /// (for catalog taxes).
  final List<OrderLineItemPricingBlocklistsBlockedTax>? blockedTaxes;

  @override
  List<Object?> get props => [
        blockedDiscounts,
        blockedTaxes,
      ];
}
