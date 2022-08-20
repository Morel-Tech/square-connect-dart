import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_category.g.dart';

@JsonSerializable()
class CatalogCategory extends Equatable {
  const CatalogCategory({
    this.name,
    this.imageIds,
  });

  /// Converts a [Map] to an [CatalogCategory]
  factory CatalogCategory.fromJson(Map<String, dynamic> json) =>
      _$CatalogCategoryFromJson(json);

  /// Converts a [CatalogCategory] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogCategoryToJson(this);

  final String? name;
  final List<String>? imageIds;

  @override
  List<Object?> get props => [
        name,
        imageIds,
      ];
}
