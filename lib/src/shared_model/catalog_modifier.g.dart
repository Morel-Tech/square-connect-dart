// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogModifier _$CatalogModifierFromJson(Map<String, dynamic> json) =>
    CatalogModifier(
      name: json['name'] as String?,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      ordinal: json['ordinal'] as int?,
      modifierListId: json['modifier_list_id'] as String?,
    );

Map<String, dynamic> _$CatalogModifierToJson(CatalogModifier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price_money': instance.priceMoney?.toJson(),
      'ordinal': instance.ordinal,
      'modifier_list_id': instance.modifierListId,
    };
