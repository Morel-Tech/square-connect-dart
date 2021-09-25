import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_item_modifier_list_info.g.dart';

@JsonSerializable()
class CatalogItemModifierListInfo extends Equatable {
  const CatalogItemModifierListInfo({
    required this.modifierListId,
    this.modifierOverrides,
    required this.minSelectedModifiers,
    required this.maxSelectedModifiers,
    required this.enabled,
  });

  /// Converts a [Map] to an [CatalogItemModifierListInfo]
  factory CatalogItemModifierListInfo.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemModifierListInfoFromJson(json);

  /// Converts a [CatalogItemModifierListInfo] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemModifierListInfoToJson(this);

  final String modifierListId;
  final List<CatalogModifierOverride>? modifierOverrides;
  final int minSelectedModifiers;
  final int maxSelectedModifiers;
  final bool enabled;

  @override
  List<Object?> get props {
    return [
      modifierListId,
      modifierOverrides,
      minSelectedModifiers,
      maxSelectedModifiers,
      enabled,
    ];
  }
}
