// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_request_additional_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeRequestAdditionalRecipient _$ChargeRequestAdditionalRecipientFromJson(
        Map<String, dynamic> json) =>
    ChargeRequestAdditionalRecipient(
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      description: json['description'] as String,
      locationId: json['location_id'] as String,
    );

Map<String, dynamic> _$ChargeRequestAdditionalRecipientToJson(
        ChargeRequestAdditionalRecipient instance) =>
    <String, dynamic>{
      'amount_money': instance.amountMoney.toJson(),
      'description': instance.description,
      'location_id': instance.locationId,
    };
