import 'package:json_annotation/json_annotation.dart';

/// Indicates the Card Transaction's current status.
enum TenderCardDetailsStatus {
  /// The card transaction has been authorized but not yet captured.
  @JsonValue('AUTHORIZED')
  authorized,

  /// The card transaction was authorized and subsequently
  /// captured (i.e., completed).
  @JsonValue('CAPTURED')
  captured,

  /// The card transaction was authorized and subsequently
  /// voided (i.e., canceled).
  @JsonValue('VOIDED')
  voided,

  /// The card transaction failed.
  @JsonValue('FAILED')
  failed,
}
