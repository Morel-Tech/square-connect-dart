// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteCustomerResponse _$DeleteCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteCustomerResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteCustomerResponseToJson(
        DeleteCustomerResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };
