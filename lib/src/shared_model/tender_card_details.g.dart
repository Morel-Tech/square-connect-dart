// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_card_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderCardDetails _$TenderCardDetailsFromJson(Map<String, dynamic> json) =>
    TenderCardDetails(
      status: _$enumDecodeNullable(
          _$TenderCardDetailsStatusEnumMap, json['status']),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: _$enumDecodeNullable(
          _$TenderCardDetailsEntryMethodEnumMap, json['entry_method']),
    );

Map<String, dynamic> _$TenderCardDetailsToJson(TenderCardDetails instance) =>
    <String, dynamic>{
      'status': _$TenderCardDetailsStatusEnumMap[instance.status],
      'card': instance.card?.toJson(),
      'entry_method':
          _$TenderCardDetailsEntryMethodEnumMap[instance.entryMethod],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$TenderCardDetailsStatusEnumMap = {
  TenderCardDetailsStatus.authorized: 'AUTHORIZED',
  TenderCardDetailsStatus.captured: 'CAPTURED',
  TenderCardDetailsStatus.voided: 'VOIDED',
  TenderCardDetailsStatus.failed: 'FAILED',
};

const _$TenderCardDetailsEntryMethodEnumMap = {
  TenderCardDetailsEntryMethod.swiped: 'SWIPED',
  TenderCardDetailsEntryMethod.keyed: 'KEYED',
  TenderCardDetailsEntryMethod.emv: 'EMV',
  TenderCardDetailsEntryMethod.onFile: 'ON_FILE',
  TenderCardDetailsEntryMethod.contactless: 'CONTACTLESS',
};
