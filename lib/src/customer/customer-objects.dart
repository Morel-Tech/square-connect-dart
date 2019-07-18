import 'dart:convert';

import 'package:square_connect/src/customer/customer-enums-converter.dart';
import 'package:square_connect/src/customer/customer-enums.dart';

class Customer {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Card> cards;
  final String givenName;
  final String familyName;
  final String nickname;
  final String companyName;
  final String emailAddress;
  final Address address;
  final String phoneNumber;
  final DateTime birthday;
  final String referenceId;
  final String note;
  final CustomerPreferences preferences;
  final List<CustomerGroupInfo> groups;
  final CustomerCreationSource creationSource;

  Customer(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.cards,
      this.givenName,
      this.familyName,
      this.nickname,
      this.companyName,
      this.emailAddress,
      this.address,
      this.phoneNumber,
      this.birthday,
      this.referenceId,
      this.note,
      this.preferences,
      this.groups,
      this.creationSource});

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
      cards: json['cards'] != null
          ? (json['cards'] as List).map((item) => Card.fromJson(item)).toList()
          : null,
      givenName: json['given_name'],
      familyName: json['family_name'],
      nickname: json['nickname'],
      companyName: json['company_name'],
      emailAddress: json['email_address'],
      address:
          json['address'] != null ? Address.fromJson(json['address']) : null,
      phoneNumber: json['phone_number'],
      birthday:
          json['birthday'] != null ? DateTime.parse(json['birthday']) : null,
      referenceId: json['reference_id'],
      note: json['note'],
      preferences: json['preferences'] != null
          ? CustomerPreferences.fromJson(json['preferences'])
          : null,
      groups: json['groups'] != null
          ? (json['groups'] as List)
              .map((item) => CustomerGroupInfo.fromJson(item))
              .toList()
          : null,
      creationSource: json['creation_source'] != null
          ? getCustomerCreationSourceFromString(json['creation_source'])
          : null,
    );
  }
}

class Card {
  final String id;
  final CardBrand cardBrand;
  final String last4;
  final int expMonth;
  final int expYear;
  final String cardholderName;
  final Address billingAddress;
  final String fingerprint;

  Card(
      {this.id,
      this.cardBrand,
      this.last4,
      this.expMonth,
      this.expYear,
      this.cardholderName,
      this.billingAddress,
      this.fingerprint});

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
        id: json['id'],
        cardBrand: json['card_brand'] != null
            ? getCardBrandFromString(json['card_brand'])
            : null,
        last4: json['last_4'],
        expMonth: json['exp_month'],
        expYear: json['exp_year'],
        cardholderName: json['cardholder_name'],
        billingAddress: json['billing_address'] != null
            ? Address.fromJson(json['billing_address'])
            : null,
        fingerprint: json['fingerprint']);
  }
}

class Address {
  final String addressLine1;
  final String addressLine2;
  final String addressLine3;
  final String locality;
  final String sublocality;
  final String sublocality2;
  final String sublocality3;
  final String administrativeDistrictLevel1;
  final String administrativeDistrictLevel2;
  final String administrativeDistrictLevel3;
  final String postalCode;
  final String country;
  final String firstName;
  final String lastName;
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

class CustomerPreferences {
  final bool emailUnsubscribed;

  CustomerPreferences({this.emailUnsubscribed});

  factory CustomerPreferences.fromJson(Map<String, dynamic> json) {
    return CustomerPreferences(
      emailUnsubscribed: json['email_unsubscribed'],
    );
  }
}

class CustomerGroupInfo {
  final String id;
  final String name;

  CustomerGroupInfo({this.id, this.name});

  factory CustomerGroupInfo.fromJson(Map<String, dynamic> json) {
    return CustomerGroupInfo(
      id: json['id'],
      name: json['name'],
    );
  }
}
