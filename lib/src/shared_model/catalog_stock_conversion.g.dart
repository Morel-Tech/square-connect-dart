// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_stock_conversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogStockConversion _$CatalogStockConversionFromJson(
        Map<String, dynamic> json) =>
    CatalogStockConversion(
      nonstockableQuantity: json['nonstockable_quantity'] as String,
      stockableItemVariationId: json['stockable_item_variation_id'] as String,
      stockableQuantity: json['stockable_quantity'] as String,
    );

Map<String, dynamic> _$CatalogStockConversionToJson(
        CatalogStockConversion instance) =>
    <String, dynamic>{
      'nonstockable_quantity': instance.nonstockableQuantity,
      'stockable_item_variation_id': instance.stockableItemVariationId,
      'stockable_quantity': instance.stockableQuantity,
    };
