import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_modifier.g.dart';

@JsonSerializable()
class CatalogModifier extends Equatable {
  const CatalogModifier({
    this.name,
    this.priceMoney,
    this.ordinal,
    this.modifierListId,
    this.imageId,
    this.locationOverrides,
  });

  /// Converts a [Map] to an [CatalogModifier]
  factory CatalogModifier.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierFromJson(json);

  /// Converts a [CatalogModifier] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogModifierToJson(this);

  final String? name;
  final Money? priceMoney;
  final int? ordinal;
  final String? modifierListId;
  final String? imageId;
  final List<ModifierLocationOverrides>? locationOverrides;

  @override
  List<Object?> get props => [
        name,
        priceMoney,
        ordinal,
        modifierListId,
        imageId,
        locationOverrides,
      ];
}
