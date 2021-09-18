import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'bank_account_payment_details.g.dart';

/// {@template bank_account_payment_details}
/// Additional details about BANK_ACCOUNT type payments.
/// {@endtemplate}
@JsonSerializable()
class BankAccountPaymentDetails extends Equatable {
  /// @macro {@macro bank_account_payment_details}
  const BankAccountPaymentDetails({
    this.accountOwnershipType,
    this.achDetails,
    this.bankName,
    this.country,
    this.fingerprint,
    this.statementDescription,
    this.transferType,
  });

  /// Converts a [Map] to an [BankAccountPaymentDetails]
  factory BankAccountPaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$BankAccountPaymentDetailsFromJson(json);

  /// Converts a [BankAccountPaymentDetails] to a [Map]
  Map<String, dynamic> toJson() => _$BankAccountPaymentDetailsToJson(this);

  /// The ownership type of the bank account performing the transfer. The type
  /// can be INDIVIDUAL, COMPANY, or UNKNOWN.
  final String? accountOwnershipType;

  /// ACH-specific information about the transfer. The information is only
  /// populated if the transfer_type is ACH.
  final AchDetails? achDetails;

  /// The name of the bank associated with the bank account.
  final String? bankName;

  /// The two-letter ISO code representing the country the bank account is
  /// located in.
  final String? country;

  /// Uniquely identifies the bank account for this seller and can be used to
  /// determine if payments are from the same bank account.
  final String? fingerprint;

  /// The statement description as sent to the bank.
  final String? statementDescription;

  /// The type of the bank transfer. The type can be ACH or UNKNOWN.
  final String? transferType;

  @override
  List<Object?> get props {
    return [
      accountOwnershipType,
      achDetails,
      bankName,
      country,
      fingerprint,
      statementDescription,
      transferType,
    ];
  }
}
