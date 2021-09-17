import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ach_details.g.dart';

@JsonSerializable()

/// {@template ach_details}
/// ACH-specific details about BANK_ACCOUNT type payments with the
/// transfer_type of ACH.
/// {@endtemplate}
class AchDetails extends Equatable {
  /// @macro {@macro ach_details}
  const AchDetails({
    this.accountNumberSuffix,
    this.accountType,
    this.routingNumber,
  });

  /// Converts a [Map] to an [AchDetails]
  factory AchDetails.fromJson(Map<String, dynamic> json) =>
      _$AchDetailsFromJson(json);

  /// Converts a [AchDetails] to a [Map]
  Map<String, dynamic> toJson() => _$AchDetailsToJson(this);

  /// The last few digits of the bank account number.
  final String? accountNumberSuffix;

  /// The type of the bank account performing the transfer. The account type
  /// can be CHECKING, SAVINGS, or UNKNOWN.
  final String? accountType;

  /// The routing number for the bank account.
  final String? routingNumber;

  @override
  List<Object?> get props => [
        accountNumberSuffix,
        accountType,
        routingNumber,
      ];
}
