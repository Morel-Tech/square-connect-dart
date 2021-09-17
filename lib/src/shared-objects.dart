import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'shared-objects.g.dart';

/// An object representing a method of payment used in a [Transaction].
@JsonSerializable()
class Tender extends Equatable {
  const Tender({
    required this.id,
    required this.locationId,
    required this.transactionId,
    required this.createdAt,
    required this.note,
    required this.amountMoney,
    required this.tipMoney,
    required this.processingFeeMoney,
    required this.customerId,
    required this.cardDetails,
    required this.cashDetails,
    required this.additionalRecipients,
    required this.type,
  });

  /// Converts a [Map] to an [Tender]
  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);

  /// Converts a [Tender] to a [Map]
  Map<String, dynamic> toJson() => _$TenderToJson(this);

  final String id;
  final String locationId;
  final String transactionId;
  final DateTime createdAt;
  final String note;
  final Money amountMoney;
  final Money tipMoney;
  final Money processingFeeMoney;
  final String customerId;
  final TenderCardDetails cardDetails;
  final TenderCashDetails cashDetails;
  final List<AdditionalRecipient> additionalRecipients;
  final TenderType type;

  @override
  List<Object> get props {
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

/// An object representing additional details of a tender with
/// `type` `CARD` or `SQUARE_GIFT_CARD`.
@JsonSerializable()
class TenderCardDetails extends Equatable {
  const TenderCardDetails({
    required this.status,
    required this.card,
    required this.entryMethod,
  });

  /// Converts a [Map] to an [TenderCardDetails]
  factory TenderCardDetails.fromJson(Map<String, dynamic> json) =>
      _$TenderCardDetailsFromJson(json);

  /// Converts a [TenderCardDetails] to a [Map]
  Map<String, dynamic> toJson() => _$TenderCardDetailsToJson(this);

  final TenderCardDetailsStatus status;
  final Card card;
  final TenderCardDetailsEntryMethod entryMethod;

  @override
  List<Object> get props => [status, card, entryMethod];
}

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

  final Money buyerTenderedMoney;
  final Money changeBackMoney;

  @override
  List<Object> get props => [buyerTenderedMoney, changeBackMoney];
}

/// An object representing an additional recipient (other than the merchant)
/// receiving a portion of this tender.
@JsonSerializable()
class AdditionalRecipient extends Equatable {
  const AdditionalRecipient({
    required this.locationId,
    required this.description,
    required this.amountMoney,
    required this.receivableId,
  });

  /// Converts a [Map] to an [AdditionalRecipient]
  factory AdditionalRecipient.fromJson(Map<String, dynamic> json) =>
      _$AdditionalRecipientFromJson(json);

  /// Converts a [AdditionalRecipient] to a [Map]
  Map<String, dynamic> toJson() => _$AdditionalRecipientToJson(this);

  final String locationId;
  final String description;
  final Money amountMoney;
  final String receivableId;

  @override
  List<Object> get props => [
        locationId,
        description,
        amountMoney,
        receivableId,
      ];
}

@JsonSerializable()
class TimeRange extends Equatable {
  const TimeRange({
    required this.startAt,
    required this.endAt,
  });

  /// Converts a [Map] to an [TimeRange]
  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);

  /// Converts a [TimeRange] to a [Map]
  Map<String, dynamic> toJson() => _$TimeRangeToJson(this);

  final DateTime startAt;
  final DateTime endAt;

  @override
  List<Object> get props => [startAt, endAt];
}

@JsonSerializable()
class DateRange extends Equatable {
  const DateRange({
    required this.startDate,
    required this.endDate,
  });

  /// Converts a [Map] to an [DateRange]
  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);

  /// Converts a [DateRange] to a [Map]
  Map<String, dynamic> toJson() => _$DateRangeToJson(this);

  final SquareDate startDate;
  final SquareDate endDate;

  @override
  List<Object> get props => [startDate, endDate];
}

/// An object representing a generic time of day devoid of date.
@JsonSerializable()
class SquareDate extends Equatable {
  const SquareDate({
    required this.year,
    required this.month,
    required this.day,
  });

  /// Converts a [Map] to an [SquareDate]
  factory SquareDate.fromJson(Map<String, dynamic> json) =>
      _$SquareDateFromJson(json);

  /// Converts a [SquareDate] to a [Map]
  Map<String, dynamic> toJson() => _$SquareDateToJson(this);

  /// Year of the date.
  final int year;

  /// Month in range 0-11.
  final int month;

  /// Days starting in range 0-31.
  final int day;

  @override
  List<Object> get props => [year, month, day];
}
