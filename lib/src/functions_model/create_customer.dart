import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'create_customer.g.dart';

@JsonSerializable()
class CreateCustomerRequest extends Equatable {
  const CreateCustomerRequest({
    this.idempotencyKey,
    this.givenName,
    this.familyName,
    this.companyName,
    this.nickname,
    this.emailAddress,
    this.address,
    this.phoneNumber,
    this.referenceId,
    this.note,
    this.birthday,
    this.taxIds,
  });

  /// Converts a [Map] to an [CreateCustomerRequest]
  factory CreateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerRequestFromJson(json);

  /// Converts a [CreateCustomerRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCustomerRequestToJson(this);

  /// The idempotency key for the request
  final String? idempotencyKey;

  /// The given name (that is, the first name) associated with the
  /// customer profile.
  final String? givenName;

  /// The family name (that is, the last name) associated with the
  /// customer profile.
  final String? familyName;

  /// A business name associated with the customer profile.
  final String? companyName;

  /// A nickname for the customer profile.
  final String? nickname;

  /// The email address associated with the customer profile.
  final String? emailAddress;

  /// The physical address associated with the customer profile.
  final Address? address;

  /// The 11-digit phone number associated with the customer profile.
  final String? phoneNumber;

  /// An optional second ID used to associate the customer profile with an
  /// entity in another system.
  final String? referenceId;

  /// A custom note associated with the customer profile.
  final String? note;

  /// The birthday associated with the customer profile, in RFC 3339 format.
  /// The year is optional. The timezone and time are not allowed. For example,
  /// 0000-09-21T00:00:00-00:00 represents a birthday on September 21 and
  /// 1998-09-21T00:00:00-00:00 represents a birthday on September 21, 1998.
  /// You can also specify this value in YYYY-MM-DD format.
  final String? birthday;

  /// The tax ID associated with the customer profile. This field is available
  /// only for customers of sellers in EU countries or the United Kingdom. In
  /// other countries, this field is ignored when included in a CreateCustomer
  /// request.
  final List<CustomerTaxIds>? taxIds;

  @override
  List<Object?> get props {
    return [
      idempotencyKey,
      givenName,
      familyName,
      companyName,
      nickname,
      emailAddress,
      address,
      phoneNumber,
      referenceId,
      note,
      birthday,
      taxIds,
    ];
  }
}

@JsonSerializable()
class CreateCustomerResponse extends SquareResponse {
  const CreateCustomerResponse({
    super.errors,
    this.customer,
  });

  /// Converts a [Map] to an [CreateCustomerResponse]
  factory CreateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerResponseFromJson(json);

  /// Converts a [CreateCustomerResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCustomerResponseToJson(this);

  /// The created customer profile.
  final Customer? customer;

  @override
  List<Object?> get props => [customer, errors];
}
