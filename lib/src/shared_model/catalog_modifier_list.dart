import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_modifier_list.g.dart';

@JsonSerializable()
class CatalogModifierList extends Equatable {
  const CatalogModifierList({
    this.name,
    this.selectionType,
    this.modifiers,
    this.ordinal,
    this.imageIds,
  });

  /// Converts a [Map] to an [CatalogModifierList]
  factory CatalogModifierList.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierListFromJson(json);

  /// Converts a [CatalogModifierList] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogModifierListToJson(this);

  final String? name;
  final CatalogModifierListSelectionType? selectionType;
  final List<CatalogObject>? modifiers;
  final int? ordinal;
  final List<String>? imageIds;

  @override
  List<Object?> get props => [
        name,
        selectionType,
        modifiers,
        ordinal,
        imageIds,
      ];
}
