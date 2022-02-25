import 'package:json_annotation/json_annotation.dart';

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
