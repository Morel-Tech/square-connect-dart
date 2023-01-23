// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_custom_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceCustomField _$InvoiceCustomFieldFromJson(Map<String, dynamic> json) =>
    InvoiceCustomField(
      label: json['label'] as String?,
      placement: $enumDecodeNullable(
          _$InvoiceCustomFieldPlacementEnumMap, json['placement']),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$InvoiceCustomFieldToJson(InvoiceCustomField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull(
      'placement', _$InvoiceCustomFieldPlacementEnumMap[instance.placement]);
  writeNotNull('value', instance.value);
  return val;
}

const _$InvoiceCustomFieldPlacementEnumMap = {
  InvoiceCustomFieldPlacement.aboveLineItems: 'ABOVE_LINE_ITEMS',
  InvoiceCustomFieldPlacement.belowLineItems: 'BELOW_LINE_ITEMS',
};
