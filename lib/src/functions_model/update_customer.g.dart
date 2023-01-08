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
    UpdateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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
  writeNotNull('version', instance.version);
  writeNotNull('tax_ids', instance.taxIds?.toJson());
  return val;
}

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
    UpdateCustomerResponse instance) {
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
