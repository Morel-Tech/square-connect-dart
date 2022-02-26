// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerRequest _$CreateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      givenName: json['given_name'] as String?,
      familyName: json['family_name'] as String?,
      companyName: json['company_name'] as String?,
      nickname: json['nickname'] as String?,
      emailAddress: json['email_address'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] as String?,
      referenceId: json['reference_id'] as String?,
      note: json['note'] as String?,
      birthday: json['birthday'] as String?,
      taxIds: (json['tax_ids'] as List<dynamic>?)
          ?.map((e) => CustomerTaxIds.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateCustomerRequestToJson(
        CreateCustomerRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'given_name': instance.givenName,
      'family_name': instance.familyName,
      'company_name': instance.companyName,
      'nickname': instance.nickname,
      'email_address': instance.emailAddress,
      'address': instance.address?.toJson(),
      'phone_number': instance.phoneNumber,
      'reference_id': instance.referenceId,
      'note': instance.note,
      'birthday': instance.birthday,
      'tax_ids': instance.taxIds?.map((e) => e.toJson()).toList(),
    };

CreateCustomerResponse _$CreateCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCustomerResponseToJson(
        CreateCustomerResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'customer': instance.customer?.toJson(),
    };
