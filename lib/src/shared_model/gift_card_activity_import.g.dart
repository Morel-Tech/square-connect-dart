// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_import.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityImport _$GiftCardActivityImportFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityImport(
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityImportToJson(
        GiftCardActivityImport instance) =>
    <String, dynamic>{
      'amount_money': instance.amountMoney.toJson(),
    };
