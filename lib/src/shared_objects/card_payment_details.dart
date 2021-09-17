import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'card_payment_details.g.dart';

/// {@template card_payment_details}
/// Reflects the current status of a card payment.
/// {@endtemplate}
@JsonSerializable()
class CardPaymentDetails extends Equatable {
  /// @macro {@macro card_payment_details}
  const CardPaymentDetails({
    this.status,
    this.card,
    this.entryMethod,
    this.cvvStatus,
    this.avsStatus,
    this.authResultCode,
    this.applicationIdentifier,
    this.applicationName,
    this.applicationCryptogram,
    this.verificationMethod,
    this.verificationResults,
    this.statementDescription,
    this.deviceDetails,
    this.refundRequiresCardPresence,
  });

  /// Converts a [Map] to an [CardPaymentDetails]
  factory CardPaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$CardPaymentDetailsFromJson(json);

  /// Converts a [CardPaymentDetails] to a [Map]
  Map<String, dynamic> toJson() => _$CardPaymentDetailsToJson(this);

  /// The card payment's current state. The state can be AUTHORIZED, CAPTURED,
  /// VOIDED, or FAILED.
  final String? status;

  /// check. The code can be AVS_ACCEPTED, AVS_REJECTED, or AVS_NOT_CHECKED.
  final Card? card;

  /// The method used to enter the card's details for the payment. The method
  /// can be KEYED, SWIPED, EMV, ON_FILE, or CONTACTLESS.
  final String? entryMethod;

  /// The status code returned from the Card Verification Value (CVV) check.
  /// The code can be CVV_ACCEPTED, CVV_REJECTED, or CVV_NOT_CHECKED.
  final String? cvvStatus;

  /// The status code returned from the Address Verification System (AVS)
  /// check. The code can be AVS_ACCEPTED, AVS_REJECTED, or AVS_NOT_CHECKED.
  final String? avsStatus;

  /// The status code returned by the card issuer that describes the payment's
  /// authorization status.
  final String? authResultCode;

  /// For EMV payments, the application ID identifies the EMV application used
  /// for the payment.
  final String? applicationIdentifier;

  /// For EMV payments, the human-readable name of the EMV application used for
  /// the payment.
  final String? applicationName;

  /// For EMV payments, the cryptogram generated for the payment.
  final String? applicationCryptogram;

  /// For EMV payments, the method used to verify the cardholder's identity.
  /// The method can be PIN, SIGNATURE, PIN_AND_SIGNATURE, ON_DEVICE, or NONE.
  final String? verificationMethod;

  /// For EMV payments, the results of the cardholder verification. The result
  /// can be SUCCESS, FAILURE, or UNKNOWN.
  final String? verificationResults;

  /// The statement description sent to the card networks.
  /// Note: The actual statement description varies and is likely to be
  /// truncated and appended with additional information on a per issuer basis.
  final String? statementDescription;

  /// Details about the device that took the payment.
  final DeviceDetails? deviceDetails;

  /// Whether the card must be physically present for the payment to be
  /// refunded. If set to true, the card must be present.
  final DeviceDetails? refundRequiresCardPresence;

  @override
  List<Object?> get props {
    return [
      status,
      card,
      entryMethod,
      cvvStatus,
      avsStatus,
      authResultCode,
      applicationIdentifier,
      applicationName,
      applicationCryptogram,
      verificationMethod,
      verificationResults,
      statementDescription,
      deviceDetails,
      refundRequiresCardPresence,
    ];
  }
}
