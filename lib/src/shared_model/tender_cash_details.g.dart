// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_cash_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderCashDetails _$TenderCashDetailsFromJson(Map<String, dynamic> json) =>
    TenderCashDetails(
      buyerTenderedMoney: json['buyer_tendered_money'] == null
          ? null
          : Money.fromJson(
              json['buyer_tendered_money'] as Map<String, dynamic>),
      changeBackMoney: json['change_back_money'] == null
          ? null
          : Money.fromJson(json['change_back_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenderCashDetailsToJson(TenderCashDetails instance) =>
    <String, dynamic>{
      'buyer_tendered_money': instance.buyerTenderedMoney?.toJson(),
      'change_back_money': instance.changeBackMoney?.toJson(),
    };
