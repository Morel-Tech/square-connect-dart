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
        CatalogInfoResponseLimits instance) =>
    <String, dynamic>{
      'batch_upsert_max_objects_per_batch':
          instance.batchUpsertMaxObjectsPerBatch,
      'batch_upsert_max_total_objects': instance.batchUpsertMaxTotalObjects,
      'batch_retrieve_max_object_ids': instance.batchRetrieveMaxObjectIds,
      'search_max_page_limit': instance.searchMaxPageLimit,
      'batch_delete_max_object_ids': instance.batchDeleteMaxObjectIds,
      'update_item_taxes_max_item_ids': instance.updateItemTaxesMaxItemIds,
      'update_item_taxes_max_taxes_to_enable':
          instance.updateItemTaxesMaxTaxesToEnable,
      'update_item_taxes_max_taxes_to_disable':
          instance.updateItemTaxesMaxTaxesToDisable,
      'update_item_modifier_lists_max_item_ids':
          instance.updateItemModifierListsMaxItemIds,
      'update_item_modifier_lists_max_modifier_lists_to_enable':
          instance.updateItemModifierListsMaxModifierListsToEnable,
      'update_item_modifier_lists_max_modifier_lists_to_disable':
          instance.updateItemModifierListsMaxModifierListsToDisable,
    };
