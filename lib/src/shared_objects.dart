import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'shared_objects.g.dart';

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
