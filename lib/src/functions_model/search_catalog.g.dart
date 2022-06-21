// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCatalogResponse _$SearchCatalogResponseFromJson(
        Map<String, dynamic> json) =>
    SearchCatalogResponse(
      cursor: json['cursor'] as String?,
      objects: (json['objects'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchCatalogResponseToJson(
        SearchCatalogResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
      'objects': instance.objects.map((e) => e.toJson()).toList(),
    };
