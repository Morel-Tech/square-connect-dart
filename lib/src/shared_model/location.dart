import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'location.g.dart';

/// {@template location}
/// Represents a business's locations. Can be physical or mobile. They are set
/// up in the Square dashboard. Their id is used in many other endpoints.
/// {@endtemplate}
@JsonSerializable()
class Location extends Equatable {
  /// {@macro location}
  const Location({
    required this.id,
    required this.status,
    required this.merchantId,
    required this.type,
    this.name,
    this.address,
    this.timezone,
    this.capabilities,
    this.createdAt,
    this.country,
    this.languageCode,
    this.currency,
    this.phoneNumber,
    this.businessName,
    this.websiteUrl,
    this.businessHours,
    this.businessEmail,
    this.description,
    this.twitterUsername,
    this.instagramUsername,
    this.facebookUrl,
    this.coordinates,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Location]
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  /// Converts a [Location] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  /// The [Location]'s id in guid form.
  final String id;

  /// The name of the [Location].
  final String? name;

  /// The address of the [Location].
  final Address? address;

  /// The timezone of the [Location].
  final String? timezone;

  /// The [LocationCapability]s for the [Location].
  final List<LocationCapability>? capabilities;

  /// Whether the [Location] is active or inactive.
  final LocationStatus status;

  /// When the [Location] was created.
  final DateTime? createdAt;

  /// The identifier of the merchant that owns the location.
  final String? merchantId;

  /// The [Location]'s country in ISO 3166-1-alpha-2 format.
  final String? country;

  /// The [Location]'s language in BCP 47 format.
  final String? languageCode;

  /// The currency the [Location] uses.
  final String? currency;

  /// The [Location]'s phone number.
  final String? phoneNumber;

  /// The customer facing business name, shown on customer receipts.
  final String? businessName;

  /// Whether the [Location] is physical or mobile.
  final LocationType type;

  /// The website url for the [Location].
  final String? websiteUrl;

  /// The full business hours for the [Location].
  final BusinessHours? businessHours;

  /// The email address for the [Location].
  final String? businessEmail;

  /// The description of the [Location].
  final String? description;

  /// The twitter username for the [Location].
  final String? twitterUsername;

  /// The instagram username for the [Location].
  final String? instagramUsername;

  /// The facebook url for the [Location].
  final String? facebookUrl;

  /// The physical coordinates (Latitude and Longitude) of the [Location].
  final Coordinates? coordinates;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      address,
      timezone,
      capabilities,
      status,
      createdAt,
      merchantId,
      country,
      languageCode,
      currency,
      phoneNumber,
      businessName,
      type,
      websiteUrl,
      businessHours,
      businessEmail,
      description,
      twitterUsername,
      instagramUsername,
      facebookUrl,
      coordinates,
    ];
  }
}

/// Indicates payment capabilities that a location might or might not have
/// enabled.
enum LocationCapability {
  /// The permission to process credit card transactions with Square.
  @JsonValue('CREDIT_CARD_PROCESSING')
  creditCardProcessing,

  /// The capability to receive automatic transfers from Square.
  @JsonValue('AUTOMATIC_TRANSFERS')
  automaticTransfers
}

/// Indicates if a location is active or inactive.
enum LocationStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('INACTIVE')
  inactive,
}

/// Indicates a type of location (physical or mobile).
enum LocationType {
  @JsonValue('PHYSICAL')
  physical,
  @JsonValue('MOBILE')
  mobile,
}
