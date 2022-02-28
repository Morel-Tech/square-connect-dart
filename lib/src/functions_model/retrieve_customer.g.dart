// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCustomerResponse _$RetrieveCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCustomerResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RetrieveCustomerResponseToJson(
        RetrieveCustomerResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'customer': instance.customer?.toJson(),
    };
