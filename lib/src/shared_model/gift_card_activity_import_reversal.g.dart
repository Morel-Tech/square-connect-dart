// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_import_reversal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityImportReversal _$GiftCardActivityImportReversalFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityImportReversal(
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityImportReversalToJson(
        GiftCardActivityImportReversal instance) =>
    <String, dynamic>{
      'amount_money': instance.amountMoney.toJson(),
    };
