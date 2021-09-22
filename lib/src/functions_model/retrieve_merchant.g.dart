// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveMerchantResponse _$RetrieveMerchantResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveMerchantResponse(
      merchant: Merchant.fromJson(json['merchant'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveMerchantResponseToJson(
        RetrieveMerchantResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'merchant': instance.merchant.toJson(),
    };
