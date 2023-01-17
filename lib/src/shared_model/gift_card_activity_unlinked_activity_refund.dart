import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_unlinked_activity_refund.g.dart';

@JsonSerializable()
class GiftCardActivityUnlinkedActivityRefund extends Equatable {
  const GiftCardActivityUnlinkedActivityRefund({
    required this.amountMoney,
    this.paymentId,
    this.referenceId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [GiftCardActivityUnlinkedActivityRefund]
  factory GiftCardActivityUnlinkedActivityRefund.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardActivityUnlinkedActivityRefundFromJson(json);

  /// Converts a [GiftCardActivityUnlinkedActivityRefund] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityUnlinkedActivityRefundToJson(this);

  /// The amount added to the gift card for the refund. This value is a
  /// positive integer.
  final Money amountMoney;

  /// **Read only** The ID of the refunded payment.
  final String? paymentId;

  /// A client-specified ID that associates the gift card activity with an
  /// entity in another system.
  final String? referenceId;

  @override
  List<Object?> get props => [amountMoney, paymentId, referenceId];
}
