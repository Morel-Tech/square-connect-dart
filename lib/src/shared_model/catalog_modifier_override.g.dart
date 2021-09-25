// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_modifier_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogModifierOverride _$CatalogModifierOverrideFromJson(
        Map<String, dynamic> json) =>
    CatalogModifierOverride(
      modifierId: json['modifier_id'] as String,
      onByDefault: json['on_by_default'] as bool,
    );

Map<String, dynamic> _$CatalogModifierOverrideToJson(
        CatalogModifierOverride instance) =>
    <String, dynamic>{
      'modifier_id': instance.modifierId,
      'on_by_default': instance.onByDefault,
    };
