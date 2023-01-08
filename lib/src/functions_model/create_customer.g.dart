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
    CreateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('given_name', instance.givenName);
  writeNotNull('family_name', instance.familyName);
  writeNotNull('company_name', instance.companyName);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('note', instance.note);
  writeNotNull('birthday', instance.birthday);
  writeNotNull('tax_ids', instance.taxIds?.map((e) => e.toJson()).toList());
  return val;
}

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
    CreateCustomerResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('customer', instance.customer?.toJson());
  return val;
}
