import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_line_item_pricing_blocklists_blocked_tax.g.dart';

@JsonSerializable()
class OrderLineItemPricingBlocklistsBlockedTax extends Equatable {
  const OrderLineItemPricingBlocklistsBlockedTax({
    required this.taxCatalogObjectId,
    required this.uid,
    required this.taxUid,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  ///  [OrderLineItemPricingBlocklistsBlockedTax]
  factory OrderLineItemPricingBlocklistsBlockedTax.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderLineItemPricingBlocklistsBlockedTaxFromJson(json);

  /// Converts a [OrderLineItemPricingBlocklistsBlockedTax] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$OrderLineItemPricingBlocklistsBlockedTaxToJson(this);

  /// The catalog_object_id of the tax that should be blocked. Use this field
  /// to block catalog taxes. For ad hoc taxes, use the tax_uid field.
  final String taxCatalogObjectId;

  /// The uid of the tax that should be blocked. Use this field to block ad hoc
  /// taxes. For catalog, taxes use the tax_catalog_object_id field.
  final String taxUid;

  /// A unique ID of the BlockedTax within the order.
  final String uid;

  @override
  List<Object?> get props => [
        taxCatalogObjectId,
        taxUid,
        uid,
      ];
}
