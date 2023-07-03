// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCard _$GiftCardFromJson(Map<String, dynamic> json) => GiftCard(
      type: $enumDecode(_$GiftCardTypeEnumMap, json['type']),
      id: json['id'] as String?,
      ganSource:
          $enumDecodeNullable(_$GiftCardGANSourceEnumMap, json['gan_source']),
      state: $enumDecodeNullable(_$GiftCardStatusEnumMap, json['state']),
      balanceMoney: json['balance_money'] == null
          ? null
          : Money.fromJson(json['balance_money'] as Map<String, dynamic>),
      gan: json['gan'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GiftCardToJson(GiftCard instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['type'] = _$GiftCardTypeEnumMap[instance.type]!;
  writeNotNull('gan_source', _$GiftCardGANSourceEnumMap[instance.ganSource]);
  writeNotNull('state', _$GiftCardStatusEnumMap[instance.state]);
  writeNotNull('balance_money', instance.balanceMoney?.toJson());
  writeNotNull('gan', instance.gan);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('customer_ids', instance.customerIds);
  return val;
}

const _$GiftCardTypeEnumMap = {
  GiftCardType.physical: 'PHYSICAL',
  GiftCardType.digital: 'DIGITAL',
};

const _$GiftCardGANSourceEnumMap = {
  GiftCardGANSource.square: 'SQUARE',
  GiftCardGANSource.other: 'OTHER',
};

const _$GiftCardStatusEnumMap = {
  GiftCardStatus.active: 'ACTIVE',
  GiftCardStatus.deactivated: 'DEACTIVATED',
  GiftCardStatus.blocked: 'BLOCKED',
  GiftCardStatus.pending: 'PENDING',
};
