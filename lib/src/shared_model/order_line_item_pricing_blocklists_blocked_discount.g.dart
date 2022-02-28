// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_pricing_blocklists_blocked_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemPricingBlocklistsBlockedDiscount
    _$OrderLineItemPricingBlocklistsBlockedDiscountFromJson(
            Map<String, dynamic> json) =>
        OrderLineItemPricingBlocklistsBlockedDiscount(
          discountCatalogObjectId: json['discount_catalog_object_id'] as String,
          discountUid: json['discount_uid'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic> _$OrderLineItemPricingBlocklistsBlockedDiscountToJson(
        OrderLineItemPricingBlocklistsBlockedDiscount instance) =>
    <String, dynamic>{
      'discount_catalog_object_id': instance.discountCatalogObjectId,
      'discount_uid': instance.discountUid,
      'uid': instance.uid,
    };
