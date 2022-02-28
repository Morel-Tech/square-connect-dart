import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_line_item_pricing_blocklists_blocked_discount.g.dart';

@JsonSerializable()
class OrderLineItemPricingBlocklistsBlockedDiscount extends Equatable {
  const OrderLineItemPricingBlocklistsBlockedDiscount({
    required this.discountCatalogObjectId,
    required this.discountUid,
    required this.uid,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [OrderLineItemPricingBlocklistsBlockedDiscount]
  factory OrderLineItemPricingBlocklistsBlockedDiscount.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderLineItemPricingBlocklistsBlockedDiscountFromJson(json);

  /// Converts a [OrderLineItemPricingBlocklistsBlockedDiscount] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$OrderLineItemPricingBlocklistsBlockedDiscountToJson(this);

  /// The catalog_object_id of the discount that should be blocked. Use this
  /// field to block catalog discounts. For ad hoc discounts, use the
  /// discount_uid field.
  final String discountCatalogObjectId;

  /// The uid of the discount that should be blocked. Use this field to block
  /// ad hoc discounts. For catalog discounts, use the
  /// discount_catalog_object_id field.
  final String discountUid;

  /// A unique ID of the BlockedDiscount within the order.
  final String uid;

  @override
  List<Object?> get props => [
        discountCatalogObjectId,
        discountUid,
        uid,
      ];
}
