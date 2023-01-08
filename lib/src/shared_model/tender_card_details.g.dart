// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_card_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderCardDetails _$TenderCardDetailsFromJson(Map<String, dynamic> json) =>
    TenderCardDetails(
      status:
          $enumDecodeNullable(_$TenderCardDetailsStatusEnumMap, json['status']),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: $enumDecodeNullable(
          _$TenderCardDetailsEntryMethodEnumMap, json['entry_method']),
    );

Map<String, dynamic> _$TenderCardDetailsToJson(TenderCardDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$TenderCardDetailsStatusEnumMap[instance.status]);
  writeNotNull('card', instance.card?.toJson());
  writeNotNull('entry_method',
      _$TenderCardDetailsEntryMethodEnumMap[instance.entryMethod]);
  return val;
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
