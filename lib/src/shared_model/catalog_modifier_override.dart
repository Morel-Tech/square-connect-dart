import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_modifier_override.g.dart';

@JsonSerializable()
class CatalogModifierOverride extends Equatable {
  const CatalogModifierOverride({
    required this.modifierId,
    required this.onByDefault,
  });

  /// Converts a [Map] to an [CatalogModifierOverride]
  factory CatalogModifierOverride.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierOverrideFromJson(json);

  /// Converts a [CatalogModifierOverride] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogModifierOverrideToJson(this);

  /// The ID of the [CatalogModifier] whose default behavior is being overridden
  final String modifierId;

  /// If true, this [CatalogModifier] should be selected by default for this
  /// [CatalogItem].
  final bool onByDefault;

  @override
  List<Object?> get props => [modifierId, onByDefault];
}
