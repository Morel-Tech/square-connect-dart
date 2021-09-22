// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_merchants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMerchantsResponse _$ListMerchantsResponseFromJson(
        Map<String, dynamic> json) =>
    ListMerchantsResponse(
      merchants: (json['merchants'] as List<dynamic>)
          .map((e) => Merchant.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as int?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListMerchantsResponseToJson(
        ListMerchantsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'merchants': instance.merchants.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
