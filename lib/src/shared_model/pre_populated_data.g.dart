// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_populated_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrePopulatedData _$PrePopulatedDataFromJson(Map<String, dynamic> json) =>
    PrePopulatedData(
      buyerAddress: json['buyer_address'] == null
          ? null
          : Address.fromJson(json['buyer_address'] as Map<String, dynamic>),
      buyerEmail: json['buyer_email'] as String?,
      buyerPhoneNumber: json['buyer_phone_number'] as String?,
    );

Map<String, dynamic> _$PrePopulatedDataToJson(PrePopulatedData instance) =>
    <String, dynamic>{
      'buyer_address': instance.buyerAddress?.toJson(),
      'buyer_email': instance.buyerEmail,
      'buyer_phone_number': instance.buyerPhoneNumber,
    };
