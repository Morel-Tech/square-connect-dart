import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'tender_cash_details.g.dart';

/// An object representing the details of a tender with `type` `CASH`.
@JsonSerializable()
class TenderCashDetails extends Equatable {
  const TenderCashDetails({
    required this.buyerTenderedMoney,
    required this.changeBackMoney,
  });

  /// Converts a [Map] to an [TenderCashDetails]
  factory TenderCashDetails.fromJson(Map<String, dynamic> json) =>
      _$TenderCashDetailsFromJson(json);

  /// Converts a [TenderCashDetails] to a [Map]
  Map<String, dynamic> toJson() => _$TenderCashDetailsToJson(this);

  final Money? buyerTenderedMoney;
  final Money? changeBackMoney;

  @override
  List<Object?> get props => [buyerTenderedMoney, changeBackMoney];
}
