// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalRecipient _$AdditionalRecipientFromJson(Map<String, dynamic> json) =>
    AdditionalRecipient(
      locationId: json['location_id'] as String,
      description: json['description'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      receivableId: json['receivable_id'] as String,
    );

Map<String, dynamic> _$AdditionalRecipientToJson(
        AdditionalRecipient instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'description': instance.description,
      'amount_money': instance.amountMoney.toJson(),
      'receivable_id': instance.receivableId,
    };
