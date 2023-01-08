// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryChange _$InventoryChangeFromJson(Map<String, dynamic> json) =>
    InventoryChange(
      type: $enumDecode(_$InventoryChangeTypeEnumMap, json['type']),
      physicalCount: json['physical_count'] == null
          ? null
          : InventoryPhysicalCount.fromJson(
              json['physical_count'] as Map<String, dynamic>),
      adjustment: json['adjustment'] == null
          ? null
          : InventoryAdjustment.fromJson(
              json['adjustment'] as Map<String, dynamic>),
      transfer: json['transfer'] == null
          ? null
          : InventoryTransfer.fromJson(
              json['transfer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InventoryChangeToJson(InventoryChange instance) {
  final val = <String, dynamic>{
    'type': _$InventoryChangeTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('physical_count', instance.physicalCount?.toJson());
  writeNotNull('adjustment', instance.adjustment?.toJson());
  writeNotNull('transfer', instance.transfer?.toJson());
  return val;
}

const _$InventoryChangeTypeEnumMap = {
  InventoryChangeType.physicalCount: 'PHYSICAL_COUNT',
  InventoryChangeType.adjustment: 'ADJUSTMENT',
  InventoryChangeType.transfer: 'TRANSFER',
};
