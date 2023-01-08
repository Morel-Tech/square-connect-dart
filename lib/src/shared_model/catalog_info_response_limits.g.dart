// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_info_response_limits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogInfoResponseLimits _$CatalogInfoResponseLimitsFromJson(
        Map<String, dynamic> json) =>
    CatalogInfoResponseLimits(
      batchUpsertMaxObjectsPerBatch:
          json['batch_upsert_max_objects_per_batch'] as int?,
      batchUpsertMaxTotalObjects:
          json['batch_upsert_max_total_objects'] as int?,
      batchRetrieveMaxObjectIds: json['batch_retrieve_max_object_ids'] as int?,
      searchMaxPageLimit: json['search_max_page_limit'] as int?,
      batchDeleteMaxObjectIds: json['batch_delete_max_object_ids'] as int?,
      updateItemTaxesMaxItemIds: json['update_item_taxes_max_item_ids'] as int?,
      updateItemTaxesMaxTaxesToEnable:
          json['update_item_taxes_max_taxes_to_enable'] as int?,
      updateItemTaxesMaxTaxesToDisable:
          json['update_item_taxes_max_taxes_to_disable'] as int?,
      updateItemModifierListsMaxItemIds:
          json['update_item_modifier_lists_max_item_ids'] as int?,
      updateItemModifierListsMaxModifierListsToEnable:
          json['update_item_modifier_lists_max_modifier_lists_to_enable']
              as int?,
      updateItemModifierListsMaxModifierListsToDisable:
          json['update_item_modifier_lists_max_modifier_lists_to_disable']
              as int?,
    );

Map<String, dynamic> _$CatalogInfoResponseLimitsToJson(
    CatalogInfoResponseLimits instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_upsert_max_objects_per_batch',
      instance.batchUpsertMaxObjectsPerBatch);
  writeNotNull(
      'batch_upsert_max_total_objects', instance.batchUpsertMaxTotalObjects);
  writeNotNull(
      'batch_retrieve_max_object_ids', instance.batchRetrieveMaxObjectIds);
  writeNotNull('search_max_page_limit', instance.searchMaxPageLimit);
  writeNotNull('batch_delete_max_object_ids', instance.batchDeleteMaxObjectIds);
  writeNotNull(
      'update_item_taxes_max_item_ids', instance.updateItemTaxesMaxItemIds);
  writeNotNull('update_item_taxes_max_taxes_to_enable',
      instance.updateItemTaxesMaxTaxesToEnable);
  writeNotNull('update_item_taxes_max_taxes_to_disable',
      instance.updateItemTaxesMaxTaxesToDisable);
  writeNotNull('update_item_modifier_lists_max_item_ids',
      instance.updateItemModifierListsMaxItemIds);
  writeNotNull('update_item_modifier_lists_max_modifier_lists_to_enable',
      instance.updateItemModifierListsMaxModifierListsToEnable);
  writeNotNull('update_item_modifier_lists_max_modifier_lists_to_disable',
      instance.updateItemModifierListsMaxModifierListsToDisable);
  return val;
}
