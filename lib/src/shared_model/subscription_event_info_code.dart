import 'package:json_annotation/json_annotation.dart';

enum SubscriptionEventInfoCode {
  /// The location is not active.
  @JsonValue('LOCATION_NOT_ACTIVE')
  locationNotActive,

  /// The location cannot accept payments.
  @JsonValue('LOCATION_CANNOT_ACCEPT_PAYMENT')
  locationCannotAcceptPayment,

  /// The subscribing customer profile has been deleted.
  @JsonValue('CUSTOMER_DELETED')
  customerDeleted,

  /// The subscribing customer does not have an email.
  @JsonValue('CUSTOMER_NO_EMAIL')
  customerNoEmail,

  /// The subscribing customer does not have a name.
  @JsonValue('CUSTOMER_NO_NAME')
  customerNoName,

  /// User-provided detail.
  @JsonValue('USER_PROVIDED')
  userProvided,
}
