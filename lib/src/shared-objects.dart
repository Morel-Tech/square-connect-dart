import 'dart:convert';

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