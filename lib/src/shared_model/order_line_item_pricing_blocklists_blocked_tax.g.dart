// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_pricing_blocklists_blocked_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemPricingBlocklistsBlockedTax
    _$OrderLineItemPricingBlocklistsBlockedTaxFromJson(
            Map<String, dynamic> json) =>
        OrderLineItemPricingBlocklistsBlockedTax(
          taxCatalogObjectId: json['tax_catalog_object_id'] as String,
          uid: json['uid'] as String,
          taxUid: json['tax_uid'] as String,
        );

Map<String, dynamic> _$OrderLineItemPricingBlocklistsBlockedTaxToJson(
        OrderLineItemPricingBlocklistsBlockedTax instance) =>
    <String, dynamic>{
      'tax_catalog_object_id': instance.taxCatalogObjectId,
      'tax_uid': instance.taxUid,
      'uid': instance.uid,
    };
