// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogProductSet _$CatalogProductSetFromJson(Map<String, dynamic> json) =>
    CatalogProductSet(
      name: json['name'] as String?,
      productIdsAny: (json['product_ids_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productIdsAll: (json['product_ids_all'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      quantityExact: json['quantity_exact'] as int?,
      quantityMin: json['quantity_min'] as int?,
      quantityMax: json['quantity_max'] as int?,
      allProducts: json['all_products'] as bool?,
    );

Map<String, dynamic> _$CatalogProductSetToJson(CatalogProductSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'product_ids_any': instance.productIdsAny,
      'product_ids_all': instance.productIdsAll,
      'quantity_exact': instance.quantityExact,
      'quantity_min': instance.quantityMin,
      'quantity_max': instance.quantityMax,
      'all_products': instance.allProducts,
    };
