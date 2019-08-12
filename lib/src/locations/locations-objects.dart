import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/locations/locations-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';

/// Represents a buisness's locations. Can be physical or mobile. They are set up in the Square dashboard. Their id is used in many other endpoints.
class Location {
  /// The [Location]'s id in guid form.
  final String id;

  /// The name of the [Location].
  final String name;

  /// The address of the [Location].
  final Address address;

  /// The timezone of the [Location].
  final String timezone;

  /// The [LocationCapability]s for the [Location].
  final List<LocationCapability> capabilities;

  /// Whether the [Location] is active or inactive.
  final LocationStatus locationStatus;

  /// When the [Location] was created.
  final DateTime createdAt;

  /// The identifier of the merchant that owns the location.
  final String merchantId;

  /// The [Location]'s country in ISO 3166-1-alpha-2 format.
  final String country;

  /// The [Location]'s language in BCP 47 format.
  final String languageCode;

  /// The currency the [Location] uses.
  final Currency currency;

  /// The [Location]'s phone number.
  final String phoneNumber;

  /// The customer facing business name, shown on customer recipts.
  final String businessName;

  /// Whether the [Location] is physical or mobile.
  final LocationType type;

  /// The website url for the [Location].
  final String websiteUrl;

  /// The full business hours for the [Location].
  final BusinessHours businessHours;

  /// The email address for the [Location].
  final String businessEmail;

  /// The desciption of the [Location].
  final String description;

  /// The twitter username for the [Location].
  final String twitterUsername;

  /// The instagram username for the [Location].
  final String instagramUsername;

  /// The facebook url for the [Location].
  final String facebookUrl;

  /// The physical coordinates (Latitude and Longitude) of the [Location].
  final Coordinates coordinates;

  /// The twitter url for the [Location].
  get twitterUrl => this.twitterUsername != null
      ? 'https://twitter.com/${this.twitterUsername}'
      : null;

  /// The instagram url for the [Location].
  get instagramUrl => this.instagramUsername != null
      ? 'https://www.instagram.com/${this.instagramUsername}'
      : null;

  Location(
      {this.id,
      this.name,
      this.address,
      this.timezone,
      this.capabilities,
      this.locationStatus,
      this.createdAt,
      this.merchantId,
      this.country,
      this.languageCode,
      this.currency,
      this.phoneNumber,
      this.businessName,
      this.type,
      this.websiteUrl,
      this.businessHours,
      this.businessEmail,
      this.description,
      this.twitterUsername,
      this.instagramUsername,
      this.facebookUrl,
      this.coordinates});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'],
      name: json['name'],
      address:
          json['address'] != null ? Address.fromJson(json['address']) : null,
      timezone: json['timezone'],
      capabilities: json['capabilities'] != null
          ? (json['capabilities'] as List)
              .map((item) => getLocationCapabilityFromString(item))
              .toList()
          : null,
      locationStatus: json['status'] != null
          ? getLocationStatusFromString(json['status'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      merchantId: json['merchant_id'],
      country: json['country'],
      languageCode: json['language_code'],
      currency: json['currency'] != null
          ? getCurrencyFromString(json['currency'])
          : null,
      phoneNumber: json['phone_number'],
      businessName: json['business_name'],
      type:
          json['type'] != null ? getLocationTypeFromString(json['type']) : null,
      websiteUrl: json['website_url'],
      businessHours: json['business_hours'] != null
          ? BusinessHours.fromJson(json['business_hours'])
          : null,
      businessEmail: json['business_email'],
      description: json['description'],
      twitterUsername: json['twitter_username'],
      instagramUsername: json['instagram_username'],
      facebookUrl: json['facebook_url'],
      coordinates: json['coordinates'] != null
          ? Coordinates.fromJson(json['coordinates'])
          : null,
    );
  }
  
  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (name != null) body['name'] = name;
    if (address != null) body['address'] = address.toJson();
    if (timezone != null) body['timezone'] = timezone;
    if (capabilities != null) body['capabilities'] = capabilities.map((item) => getStringFromLocationCapability(item)).toList();
    if (locationStatus != null) body['status'] = getStringFromLocationStatus(locationStatus);
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (merchantId != null) body['merchant_id'] = merchantId;
    if (country != null) body['country'] = country;
    if (languageCode != null) body['language_code'] = languageCode;
    if (currency != null) body['currency'] = getStringFromCurrency(currency);
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (businessName != null) body['business_name'] = businessName;
    if (type != null) body['type'] = getStringFromLocationType(type);
    if (websiteUrl != null) body['website_url'] = websiteUrl;
    if (businessHours != null) body['business_hours'] = businessHours.toJson();
    if (businessEmail != null) body['business_email'] = businessEmail;
    if (description != null) body['description'] = description;
    if (twitterUsername != null) body['twitter_username'] = twitterUsername;
    if (instagramUsername != null) body['instagram_username'] = instagramUsername;
    if (facebookUrl != null) body['facebook_url'] = facebookUrl;
    if (coordinates != null) body['coordinates'] = coordinates.toJson();

    return body;
  }
}

/// An object representing the full business hours for a location.
class BusinessHours {
  /// The list of business periods for a given location.
  final List<BusinessHoursPeriod> periods;

  BusinessHours({this.periods});

  /// Gets periods in a map grouped by [DayOfWeek].
  Map<DayOfWeek, List<BusinessHoursPeriod>> get periodsAsMap {
    return {
      DayOfWeek.sunday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.sunday)
          .toList(),
      DayOfWeek.monday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.monday)
          .toList(),
      DayOfWeek.tuesday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.tuesday)
          .toList(),
      DayOfWeek.wednesday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.wednesday)
          .toList(),
      DayOfWeek.thursday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.thursday)
          .toList(),
      DayOfWeek.friday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.friday)
          .toList(),
      DayOfWeek.saturday: periods
          .where((period) => period.dayOfWeek == DayOfWeek.saturday)
          .toList(),
    };
  }

  factory BusinessHours.fromJson(Map<String, dynamic> json) {
    return BusinessHours(
        periods: json['periods'] != null
            ? (json['periods'] as List)
                .map((item) => BusinessHoursPeriod.fromJson(item))
                .toList()
            : null);
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (periods != null) body['periods'] = periods.map((item) => item.toJson()).toList();

    return body;
  }
}

/// An object representing a period of business hours.
class BusinessHoursPeriod {
  /// The start time of the period.
  final SquareTimeOfDay startLocalTime;

  /// The end time of the period.
  final SquareTimeOfDay endLocalTime;

  /// The day of the week this period takes place in.
  final DayOfWeek dayOfWeek;

  BusinessHoursPeriod({this.startLocalTime, this.endLocalTime, this.dayOfWeek});

  factory BusinessHoursPeriod.fromJson(Map<String, dynamic> json) {
    return BusinessHoursPeriod(
      startLocalTime: json['start_local_time'] != null
          ? SquareTimeOfDay.parse(json['start_local_time'])
          : null,
      endLocalTime: json['end_local_time'] != null
          ? SquareTimeOfDay.parse(json['end_local_time'])
          : null,
      dayOfWeek: json['day_of_week'] != null
          ? getDayOfWeekFromString(json['day_of_week'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (startLocalTime != null) body['start_local_time'] = startLocalTime.toString();
    if (endLocalTime != null) body['end_local_time'] = endLocalTime.toString();
    if (dayOfWeek != null) body['day_of_week'] = getStringFromDayOfWeek(dayOfWeek);

    return body;
  }
}

class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({this.latitude, this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (latitude != null) body['latitude'] = latitude;
    if (longitude != null) body['longitude'] = longitude;

    return body;
  }
}
