import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_info_response_limits.g.dart';

@JsonSerializable()
class CatalogInfoResponseLimits extends Equatable {
  const CatalogInfoResponseLimits({
    this.batchUpsertMaxObjectsPerBatch,
    this.batchUpsertMaxTotalObjects,
    this.batchRetrieveMaxObjectIds,
    this.searchMaxPageLimit,
    this.batchDeleteMaxObjectIds,
    this.updateItemTaxesMaxItemIds,
    this.updateItemTaxesMaxTaxesToEnable,
    this.updateItemTaxesMaxTaxesToDisable,
    this.updateItemModifierListsMaxItemIds,
    this.updateItemModifierListsMaxModifierListsToEnable,
    this.updateItemModifierListsMaxModifierListsToDisable,
  });

  /// Converts a [Map] to an [CatalogInfoResponseLimits]
  factory CatalogInfoResponseLimits.fromJson(Map<String, dynamic> json) =>
      _$CatalogInfoResponseLimitsFromJson(json);

  /// Converts a [CatalogInfoResponseLimits] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogInfoResponseLimitsToJson(this);

  final int? batchUpsertMaxObjectsPerBatch;
  final int? batchUpsertMaxTotalObjects;
  final int? batchRetrieveMaxObjectIds;
  final int? searchMaxPageLimit;
  final int? batchDeleteMaxObjectIds;
  final int? updateItemTaxesMaxItemIds;
  final int? updateItemTaxesMaxTaxesToEnable;
  final int? updateItemTaxesMaxTaxesToDisable;
  final int? updateItemModifierListsMaxItemIds;
  final int? updateItemModifierListsMaxModifierListsToEnable;
  final int? updateItemModifierListsMaxModifierListsToDisable;

  @override
  List<Object?> get props {
    return [
      batchUpsertMaxObjectsPerBatch,
      batchUpsertMaxTotalObjects,
      batchRetrieveMaxObjectIds,
      searchMaxPageLimit,
      batchDeleteMaxObjectIds,
      updateItemTaxesMaxItemIds,
      updateItemTaxesMaxTaxesToEnable,
      updateItemTaxesMaxTaxesToDisable,
      updateItemModifierListsMaxItemIds,
      updateItemModifierListsMaxModifierListsToEnable,
      updateItemModifierListsMaxModifierListsToDisable,
    ];
  }
}
