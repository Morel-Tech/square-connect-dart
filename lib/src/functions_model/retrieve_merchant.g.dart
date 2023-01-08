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
    RetrieveMerchantResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['merchant'] = instance.merchant.toJson();
  return val;
}
