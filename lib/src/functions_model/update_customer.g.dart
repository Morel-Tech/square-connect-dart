// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerRequest(
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
      version: json['version'] as int?,
      taxIds: json['tax_ids'] == null
          ? null
          : CustomerTaxIds.fromJson(json['tax_ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCustomerRequestToJson(
        UpdateCustomerRequest instance) =>
    <String, dynamic>{
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
      'version': instance.version,
      'tax_ids': instance.taxIds?.toJson(),
    };

UpdateCustomerResponse _$UpdateCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCustomerResponseToJson(
        UpdateCustomerResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'customer': instance.customer?.toJson(),
    };
