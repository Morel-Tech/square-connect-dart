import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

/// {@template address}
/// Represents a physical address.
/// {@endtemplate}
@JsonSerializable()
class Address extends Equatable {
  /// @macro {@macro address}
  const Address({
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.administrativeDistrictLevel1,
    this.administrativeDistrictLevel2,
    this.administrativeDistrictLevel3,
    this.country,
    this.firstName,
    this.lastName,
    this.locality,
    this.organization,
    this.postalCode,
    this.sublocality,
    this.sublocality2,
    this.sublocality3,
  });

  /// Converts a [Map] to an [Address]
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  /// Converts a [Address] to a [Map]
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  /// The first line of the address.
  /// Fields that start with address_line provide the address's most specific
  /// details, like street number, street name, and building name. They do not
  /// provide less specific details like city, state/province, or country
  /// (these details are provided in other fields).
  @JsonKey(name: 'address_line_1')
  final String? addressLine1;

  /// The second line of the address, if any.
  @JsonKey(name: 'address_line_2')
  final String? addressLine2;

  /// The third line of the address, if any.
  @JsonKey(name: 'address_line_3')
  final String? addressLine3;

  /// A civil entity within the address's country. In the US, this is the state.
  @JsonKey(name: 'administrative_district_level_1')
  final String? administrativeDistrictLevel1;

  /// A civil entity within the address's administrative_district_level_1. In
  /// the US, this is the county.
  @JsonKey(name: 'administrative_district_level_2')
  final String? administrativeDistrictLevel2;

  /// A civil entity within the address's administrative_district_level_2, if
  /// any.
  @JsonKey(name: 'administrative_district_level_3')
  final String? administrativeDistrictLevel3;

  /// The address's country, in ISO 3166-1-alpha-2 format.
  @JsonKey(unknownEnumValue: Country.unknown)
  final Country? country;

  /// Optional first name when it's representing recipient.
  final String? firstName;

  /// Optional last name when it's representing recipient.
  final String? lastName;

  /// The city or town of the address.
  final String? locality;

  /// Optional organization name when it's representing recipient.
  final String? organization;

  /// The address's postal code.
  final String? postalCode;

  /// A civil region within the address's locality, if any.
  final String? sublocality;

  /// A civil region within the address's sublocality, if any.
  @JsonKey(name: 'sublocality_2')
  final String? sublocality2;

  /// A civil region within the address's sublocality_2, if any.
  @JsonKey(name: 'sublocality_3')
  final String? sublocality3;

  @override
  List<Object?> get props {
    return [
      addressLine1,
      addressLine2,
      addressLine3,
      administrativeDistrictLevel1,
      administrativeDistrictLevel2,
      administrativeDistrictLevel3,
      country,
      firstName,
      lastName,
      locality,
      organization,
      postalCode,
      sublocality,
      sublocality2,
      sublocality3,
    ];
  }
}

/// Indicates the country associated with another entity, such as a business.
/// NOTE: not all countries included
enum Country {
  /// Indicates the country of Unknown
  @JsonValue('ZZ')
  unknown,

  /// Indicates the country of unitedStatesOfAmerica
  @JsonValue('US')
  unitedStatesOfAmerica,

  /// Indicates the country of spain
  @JsonValue('ES')
  spain,

  /// Indicates the country of france
  @JsonValue('FR')
  france,

  /// Indicates the country of unitedKingdom
  @JsonValue('GB')
  unitedKingdom,

  /// Indicates the country of canada
  @JsonValue('CA')
  canada,

  /// Indicates the country of mexico
  @JsonValue('MX')
  mexico,

  /// Indicates the country of germany
  @JsonValue('DE')
  germany,

  /// Indicates the country of china
  @JsonValue('CN')
  china,
}
