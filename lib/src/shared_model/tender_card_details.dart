import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'tender_card_details.g.dart';

/// An object representing additional details of a tender with
/// `type` `CARD` or `SQUARE_GIFT_CARD`.
@JsonSerializable()
class TenderCardDetails extends Equatable {
  const TenderCardDetails({
    this.status,
    this.card,
    this.entryMethod,
  });

  /// Converts a [Map] to an [TenderCardDetails]
  factory TenderCardDetails.fromJson(Map<String, dynamic> json) =>
      _$TenderCardDetailsFromJson(json);

  /// Converts a [TenderCardDetails] to a [Map]
  Map<String, dynamic> toJson() => _$TenderCardDetailsToJson(this);

  final TenderCardDetailsStatus? status;
  final Card? card;
  final TenderCardDetailsEntryMethod? entryMethod;

  @override
  List<Object?> get props => [status, card, entryMethod];
}
