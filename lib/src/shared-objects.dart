import 'dart:convert';

import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/shared-enums-converter.dart';

/// An object representing a physical address.
class Address {
  /// The first line of the address.
  /// Fields that start with address_line provide the address's most specific details, like street number, street name, and building name. 
  /// They do not provide less specific details like city, state/province, or country (these details are provided in other fields).
  final String addressLine1;
  /// The second line of the address, if any.
  final String addressLine2;
  /// The third line of the address, if any.
  final String addressLine3;
  /// The city or town of the address.
  final String locality;
  /// A civil region within the address's locality, if any.
  final String sublocality;
  /// A civil region within the address's sublocality, if any.
  final String sublocality2;
  /// A civil region within the address's sublocality2, if any.
  final String sublocality3;
  /// A civil entity within the address's country. In the US, this is the state.
  final String administrativeDistrictLevel1;
  /// A civil entity within the address's administrativeDistrictLevel1. In the US, this is the county.
  final String administrativeDistrictLevel2;
  /// A civil entity within the address's administrative_district_level_2, if any.
  final String administrativeDistrictLevel3;
  /// The address's postal code.
  final String postalCode;
  /// The address's country, in ISO 3166-1-alpha-2 format.
  final String country;
  /// Optional first name when it's representing recipient.
  final String firstName;
  /// Optional last name when it's representing recipient.
  final String lastName;
  /// Optional organization name when it's representing recipient.
  final String organization;

  Address(
      {this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.locality,
      this.sublocality,
      this.sublocality2,
      this.sublocality3,
      this.administrativeDistrictLevel1,
      this.administrativeDistrictLevel2,
      this.administrativeDistrictLevel3,
      this.postalCode,
      this.country,
      this.firstName,
      this.lastName,
      this.organization});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      addressLine1: json['address_line_1'],
      addressLine2: json['address_line_2'],
      addressLine3: json['address_line_3'],
      locality: json['locality'],
      sublocality: json['sublocality'],
      sublocality2: json['sublocality_2'],
      sublocality3: json['sublocality_3'],
      administrativeDistrictLevel1: json['administrative_district_level_1'],
      administrativeDistrictLevel2: json['administrative_district_level_2'],
      administrativeDistrictLevel3: json['administrative_district_level_3'],
      postalCode: json['postal_code'],
      country: json['country'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      organization: json['organization'],
    );
  }

  String toJson() {
    Map<String, String> map = {};
    if (this.addressLine1 != null) map['address_line_1'] = this.addressLine1;
    if (this.addressLine2 != null) map['address_line_2'] = this.addressLine2;
    if (this.addressLine3 != null) map['address_line_3'] = this.addressLine3;
    if (this.locality != null) map['locality'] = this.locality;
    if (this.sublocality != null) map['sublocality'] = this.sublocality;
    if (this.sublocality2 != null) map['sublocality_2'] = this.sublocality2;
    if (this.sublocality3 != null) map['sublocality_3'] = this.sublocality3;
    if (this.administrativeDistrictLevel1 != null)
      map['administrative_district_level_1'] =
          this.administrativeDistrictLevel1;
    if (this.administrativeDistrictLevel2 != null)
      map['administrative_district_level_2'] =
          this.administrativeDistrictLevel2;
    if (this.administrativeDistrictLevel3 != null)
      map['administrative_district_level_3'] =
          this.administrativeDistrictLevel3;
    if (this.postalCode != null) map['postal_code'] = this.postalCode;
    if (this.country != null) map['country'] = this.country;
    if (this.firstName != null) map['first_name'] = this.firstName;
    if (this.lastName != null) map['last_name'] = this.lastName;
    if (this.organization != null) map['organization'] = this.organization;
    return json.encode(map);
  }
}

/// An object representing an amount of money.
class Money {
  /// The amount of money, in the smallest denomination of the currency indicated by currency. For example, when currency is USD, amount is in cents. **NOTE:** Amount MUST be positive.
  final int amount;
  /// The type of currency.
  final Currency currency;

  Money({this.amount, this.currency})
      : assert(amount != null),
        assert(amount >= 0),
        assert(currency != null);

  factory Money.fromJson(Map<String, dynamic> json) {
    return Money(
        amount: json['amount'],
        currency: getCurrencyFromString(json['currency']));
  }
}

/// An object representing and error generated from any Square APIs.
class SquareError {
  /// The category this [Error] belongs to.
  final ErrorCategory category;
  /// The [Error]'s specific code.
  final String code;
  /// The human-readable description of the [Error].
  final String detail;
  /// The name of the field provided in the original request that the error pertains to, if any.
  final String field;

  SquareError({this.category, this.code, this.detail, this.field});

  factory SquareError.fromJson(Map<String, dynamic> json) {
    return SquareError(
      category: getErrorCategoryFromString(json['category']),
      code: json['code'],
      detail: json['detail'],
      field: json['field'],
    );
  }

  @override
  String toString() {
    return 'ERROR OF TYPE ${getStringFromErrorCategory(category)}: $code on field $field \n\n\t Detail: $detail';
  }
}