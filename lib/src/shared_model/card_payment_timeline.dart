import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_payment_timeline.g.dart';

/// {@template card_payment_timeline}
/// The timeline for card payments.
/// {@endtemplate}
@JsonSerializable()
class CardPaymentTimeline extends Equatable {
  /// @macro {@macro card_payment_timeline}
  const CardPaymentTimeline({
    this.authorizedAt,
    this.capturedAt,
    this.voidedAt,
  });

  /// Converts a [Map] to an [CardPaymentTimeline]
  factory CardPaymentTimeline.fromJson(Map<String, dynamic> json) =>
      _$CardPaymentTimelineFromJson(json);

  /// Converts a [CardPaymentTimeline] to a [Map]
  Map<String, dynamic> toJson() => _$CardPaymentTimelineToJson(this);

  /// The timestamp when the payment was authorized, in RFC 3339 format.
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  /// UTC: 2020-01-26T02:25:34Z
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final String? authorizedAt;

  /// The timestamp when the payment was captured, in RFC 3339 format.
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  /// UTC: 2020-01-26T02:25:34Z
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final String? capturedAt;

  /// The timestamp when the payment was voided, in RFC 3339 format.
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  /// UTC: 2020-01-26T02:25:34Z
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final String? voidedAt;

  @override
  List<Object?> get props => [authorizedAt, capturedAt, voidedAt];
}
