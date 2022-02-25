// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCustomersResponse _$ListCustomersResponseFromJson(
        Map<String, dynamic> json) =>
    ListCustomersResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$ListCustomersResponseToJson(
        ListCustomersResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'customers': instance.customers?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
