import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'update_customer.g.dart';

@JsonSerializable()
class UpdateCustomerRequest extends Equatable {
  const UpdateCustomerRequest({
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
    this.version,
    this.taxIds,
  });

  /// Converts a [Map] to an [UpdateCustomerRequest]
  factory UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerRequestFromJson(json);

  /// Converts a [UpdateCustomerRequest] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateCustomerRequestToJson(this);

  final String? givenName;
  final String? familyName;
  final String? companyName;
  final String? nickname;
  final String? emailAddress;
  final Address? address;
  final String? phoneNumber;
  final String? referenceId;
  final String? note;
  final String? birthday;
  final int? version;
  final CustomerTaxIds? taxIds;

  @override
  List<Object?> get props {
    return [
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
      version,
      taxIds,
    ];
  }
}

@JsonSerializable()
class UpdateCustomerResponse extends SquareResponse {
  const UpdateCustomerResponse({super.errors, this.customer});

  /// Converts a [Map] to an [UpdateCustomerResponse]
  factory UpdateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerResponseFromJson(json);

  /// Converts a [UpdateCustomerResponse] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateCustomerResponseToJson(this);

  final Customer? customer;

  @override
  List<Object?> get props => [errors, customer];
}
