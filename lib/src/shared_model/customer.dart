import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'customer.g.dart';

/// {@template customer}
/// Represents a Square customer profile in the Customer Directory of a Square
/// seller.
/// {@endtemplate}
@JsonSerializable()
class Customer extends Equatable {
  /// @macro {@macro customer}
  const Customer({
    this.id,
    this.address,
    this.birthday,
    this.companyName,
    this.createdAt,
    this.creationSource,
    this.emailAddress,
    this.familyName,
    this.givenName,
    this.groupIds,
    this.nickname,
    this.note,
    this.phoneNumber,
    this.preferences,
    this.referenceId,
    this.segmentIds,
    this.updatedAt,
    this.version,
  });

  /// Converts a [Map] to an [Customer]
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  /// Converts a [Customer] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  /// A unique Square-assigned ID for the customer profile.
  final String? id;

  /// The physical address associated with the customer profile.
  final Address? address;

  /// The birthday associated with the customer profile, in RFC 3339 format.
  /// The year is optional. The timezone and time are not allowed. For example,
  /// 0000-09-21T00:00:00-00:00 represents a birthday on September 21 and
  /// 1998-09-21T00:00:00-00:00 represents a birthday on September 21, 1998.
  final DateTime? birthday;

  /// A business name associated with the customer profile.
  final String? companyName;

  /// Read only The timestamp when the customer profile was created, in RFC
  /// 3339 format. Examples for January 25th, 2020 6:25:34pm Pacific Standard
  /// Time: UTC: 2020-01-26T02:25:34Z Pacific Standard Time with UTC offset:
  /// 2020-01-25T18:25:34-08:00
  final DateTime? createdAt;

  /// A creation source represents the method used to create the customer
  /// profile.
  final CustomerCreationSource? creationSource;

  /// The email address associated with the customer profile.
  final String? emailAddress;

  /// The family (i.e., last) name associated with the customer profile.
  final String? familyName;

  /// The given (i.e., first) name associated with the customer profile.
  final String? givenName;

  /// The IDs of customer groups the customer belongs to.
  final List<String>? groupIds;

  /// The IDs of customer groups the customer belongs to.
  final String? nickname;

  /// A custom note associated with the customer profile.
  final String? note;

  /// The 11-digit phone number associated with the customer profile.
  final String? phoneNumber;

  /// Represents general customer preferences.
  final CustomerPreferences? preferences;

  /// An optional second ID used to associate the customer profile with an
  /// entity in another system.
  final String? referenceId;

  /// The IDs of segments the customer belongs to.
  final List<String>? segmentIds;

  /// Read only The timestamp when the customer profile was last updated, in
  /// RFC 3339 format.
  final DateTime? updatedAt;

  /// he Square-assigned version number of the customer profile. The version
  /// number is incremented each time an update is committed to the customer
  /// profile, except for changes to customer segment membership and cards on
  /// file.
  final int? version;

  @override
  List<Object?> get props {
    return [
      id,
      address,
      birthday,
      companyName,
      createdAt,
      creationSource,
      emailAddress,
      familyName,
      givenName,
      groupIds,
      nickname,
      note,
      phoneNumber,
      preferences,
      referenceId,
      segmentIds,
      updatedAt,
      version,
    ];
  }
}
