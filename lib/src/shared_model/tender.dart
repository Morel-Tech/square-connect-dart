import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'tender.g.dart';

/// Represents a tender (i.e., a method of payment) used in a
/// Square transaction.
@JsonSerializable()
class Tender extends Equatable {
  const Tender({
    this.id,
    this.locationId,
    this.transactionId,
    this.createdAt,
    this.note,
    this.amountMoney,
    this.tipMoney,
    this.processingFeeMoney,
    this.customerId,
    this.cardDetails,
    this.cashDetails,
    this.additionalRecipients,
    required this.type,
  });

  /// Converts a [Map] to an [Tender]
  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);

  /// Converts a [Tender] to a [Map]
  Map<String, dynamic> toJson() => _$TenderToJson(this);

  final String? id;
  final String? locationId;
  final String? transactionId;
  final DateTime? createdAt;
  final String? note;
  final Money? amountMoney;
  final Money? tipMoney;
  final Money? processingFeeMoney;
  final String? customerId;
  final TenderCardDetails? cardDetails;
  final TenderCashDetails? cashDetails;
  final List<AdditionalRecipient>? additionalRecipients;
  final TenderType type;

  @override
  List<Object?> get props {
    return [
      id,
      locationId,
      transactionId,
      createdAt,
      note,
      amountMoney,
      tipMoney,
      processingFeeMoney,
      customerId,
      cardDetails,
      cashDetails,
      additionalRecipients,
      type,
    ];
  }
}
