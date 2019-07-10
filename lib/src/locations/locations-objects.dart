import 'package:square_connect/square_connect.dart';

class Location {
  final String id;
  final String name;
  final Address address;
  final String timezone;
  final List<LocationCapability> capabilities;
  final LocationStatus locationStatus;
  final DateTime createdAt;
  final String merchantId;
  final String country;
  final String languageCode;
  final Currency currency;
  final String phoneNumber;
  final String businessName;
  final LocationType type;
  final String websiteUrl;
  final BusinessHours businessHours;
  final String businessEmail;
  final String description;
  final String twitterUsername;
  final String instagramUsername;
  final String facebookUrl;
  final Coordinates coordinates;

  get twitterUrl => this.twitterUsername != null ? 'https://twitter.com/${this.twitterUsername}' : null;
  get instagramUrl => this.instagramUsername != null ? 'https://www.instagram.com/${this.instagramUsername}' : null;

  Location({
    this.id,
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
    this.coordinates
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'],
      name: json['name'],
      address: json['address'] != null ? Address.fromJson(json['address']) : null,
      timezone: json['timezone'],
      capabilities: json['capabilities'] != null ? (json['capabilities'] as List).map((item) => getLocationCapabilityFromString(item)).toList() : null,
      locationStatus: json['status'] != null ? getLocationStatusFromString(json['status']) : null,
      createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
      merchantId: json['merchant_id'],
      country: json['country'],
      languageCode: json['language_code'],
      currency: json['currency'] != null ? getCurrencyFromString(json['currency']) : null,
      phoneNumber: json['phone_number'],
      businessName: json['business_name'],
      type: json['type'] != null ? getLocationTypeFromString(json['type']) : null,
      websiteUrl: json['website_url'],
      businessHours: json['business_hours'] != null ? BusinessHours.fromJson(json['business_hours']) : null,
      businessEmail: json['business_email'],
      description: json['description'],
      twitterUsername: json['twitter_username'],
      instagramUsername: json['instagram_username'],
      facebookUrl: json['facebook_url'],
      coordinates: json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null,
    );
  }

}

class BusinessHours {
  final List<BusinessHoursPeriod> periods;

  BusinessHours({
    this.periods
  });

  factory BusinessHours.fromJson(Map<String, dynamic> json) {
    return BusinessHours(
      periods: json['periods'] != null ? (json['periods'] as List).map((item) => BusinessHoursPeriod.fromJson(item)).toList() : null
    );
  }
}

class BusinessHoursPeriod {
  final SquareTimeOfDay startLocalTime;
  final SquareTimeOfDay endLocalTime;
  final DayOfWeek dayOfWeek;

  BusinessHoursPeriod({
    this.startLocalTime,
    this.endLocalTime,
    this.dayOfWeek
  });

  factory BusinessHoursPeriod.fromJson(Map<String, dynamic> json) {
    return BusinessHoursPeriod(
      startLocalTime: json['start_local_time'] != null ? SquareTimeOfDay.parse(json['start_local_time']) : null,
      endLocalTime: json['end_local_time'] != null ? SquareTimeOfDay.parse(json['end_local_time']) : null,
      dayOfWeek: json['day_of_week'] != null ? getDayOfWeekFromString(json['day_of_week']) : null,
    );
  }
}

class SquareTimeOfDay {
  final int hours;
  final int minutes;
  final int seconds;

  SquareTimeOfDay(this.hours, this.minutes, this.seconds);

  String toString() {
    return '${this.hours < 10 ? '0' + this.hours.toString() : this.hours}:${this.minutes < 10 ? '0' + this.minutes.toString() : this.minutes}:${this.seconds < 10 ? '0' + this.seconds.toString() : this.seconds}';
  }

  get niceString => '${this.amPmHour}:${this.minutes < 10 ? '0' + this.minutes.toString() : this.minutes} ${this.isAm ? 'AM' : 'PM'}';

  factory SquareTimeOfDay.parse(String input) {
    if(!(RegExp(r"[0-9][0-9]:[0-9][0-9]:[0-9][0-9]").hasMatch(input))) throw ArgumentError.value(input, input, 'input is invalid time of day');
    return SquareTimeOfDay(int.parse(input.substring(0, 2)),int.parse(input.substring(3, 5)),int.parse(input.substring(6)));
  }

  bool get isAm => hours < 12;
  bool get isPm => hours >= 12;
  int get amPmHour => this.isPm ? this.hours - 12 : this.hours;
}

class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({
    this.latitude,
    this.longitude
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}