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
  final String? birthday;

  /// A business name associated with the customer profile.
  final String? companyName;

  /// Read only The timestamp when the customer profile was created, in RFC
  /// 3339 format. Examples for January 25th, 2020 6:25:34pm Pacific Standard
  /// Time: UTC: 2020-01-26T02:25:34Z Pacific Standard Time with UTC offset:
  /// 2020-01-25T18:25:34-08:00
  final String? createdAt;

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
  final String? updatedAt;

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

/// Indicates the method used to create the customer profile.
enum CustomerCreationSource {
  /// The default creation source. This source is typically used for
  /// backward/future compatibility when the original source of a customer
  /// profile is unrecognized. For example, when older clients do not support
  /// newer source types.
  @JsonValue('OTHER')
  other,

  /// The customer profile was created automatically when an appointment was
  /// scheduled.
  @JsonValue('APPOINTMENTS')
  appointments,

  /// The customer profile was created automatically when a coupon was issued
  /// using Square Point of Sale.
  @JsonValue('COUPON')
  coupon,

  /// The customer profile was restored through Square's deletion recovery
  /// process.
  @JsonValue('DELETION_RECOVERY')
  deletionRecovery,

  /// The customer profile was created manually through Square Seller Dashboard
  /// or the Point of Sale application.
  @JsonValue('DIRECTORY')
  directory,

  /// The customer profile was created automatically when a gift card was
  /// issued using Square Point of Sale. Customer profiles are created for both
  /// the buyer and the recipient of the gift card.
  @JsonValue('EGIFTING')
  egifting,

  /// The customer profile was created through Square Point of Sale when
  /// signing up for marketing emails during checkout.
  @JsonValue('EMAIL_COLLECTION')
  emailCollection,

  /// The customer profile was created automatically when importing customer
  /// data through Square Seller Dashboard
  @JsonValue('FEEDBACK')
  feedback,

  /// The customer profile was created automatically when a coupon was issued
  /// using Square Point of Sale.
  @JsonValue('IMPORT')
  import,

  /// The customer profile was created automatically during an invoice payment.
  @JsonValue('INVOICES')
  invoices,

  /// The customer profile was created automatically when customers provide a
  /// phone number for loyalty reward programs during checkout.
  @JsonValue('LOYALTY')
  loyalty,

  /// The customer profile was created automatically when a coupon was issued
  /// using Square Point of Sale.
  @JsonValue('MARKETING')
  marketing,

  /// The customer profile was created as the result of explicitly merging
  /// multiple customer profiles through the Square Seller Dashboard or the
  /// Point of Sale application.
  @JsonValue('MERGE')
  merge,

  /// The customer profile was created through Square's Online Store solution
  /// (legacy service).
  @JsonValue('ONLINE_STORE')
  onlineStore,

  /// The customer profile was created automatically as the result of a
  /// successful transaction that did not explicitly link to an existing
  /// customer profile.
  @JsonValue('INSTANT_PROFILE')
  instantProfile,

  /// The customer profile was created through Square's Virtual Terminal.
  @JsonValue('TERMINAL')
  terminal,

  /// The customer profile was created through a Square API call.
  @JsonValue('THIRD_PARTY')
  thirdParty,

  /// The customer profile was created by a third-party product and imported
  /// through an official integration.
  @JsonValue('THIRD_PARTY_IMPORT')
  thirdPartyImport,

  /// The customer profile was restored through Square's unmerge recovery
  /// process.
  @JsonValue('UNMERGE_RECOVERY')
  unmergeRecovery,
}
