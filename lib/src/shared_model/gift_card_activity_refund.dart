import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_refund.g.dart';

@JsonSerializable()
class GiftCardActivityRefund extends Equatable {
  const GiftCardActivityRefund({
    this.amountMoney,
    this.paymentId,
    this.redeemActivityId,
    this.referenceId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityRefund]
  factory GiftCardActivityRefund.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityRefundFromJson(json);

  /// Converts a [GiftCardActivityRefund] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityRefundToJson(this);

  /// The amount added to the gift card for the refund. This value is a
  /// positive integer.
  ///
  /// This field is required when creating a `REFUND` activity. The amount
  /// can represent a full or partial refund.
  final Money? amountMoney;

  /// **Read only** The ID of the refunded payment. Square populates this
  /// field if the refund is for a payment processed by Square and one of
  /// the following conditions is true:
  ///
  /// - The Refunds API is used to refund a gift card payment to the same
  /// gift card.
  /// - A seller initiated the refund from Square Point of Sale or the Seller
  /// Dashboard. The payment source can be the same gift card or a cross-tender
  /// payment from a credit card or a different gift card.
  final String? paymentId;

  /// The ID of the refunded `REDEEM` gift card activity. Square populates this
  /// field if the `payment_id` in the corresponding RefundPayment request
  /// represents a redemption made by the same gift card. Note that you must
  /// use `RefundPayment` to refund a gift card payment to the same gift card
  /// if the payment was processed by Square.
  ///
  /// For applications that use a custom payment processing system, this field
  /// is required when creating a REFUND activity. The provided `REDEEM`
  /// activity ID must be linked to the same gift card.
  final String? redeemActivityId;

  /// A client-specified ID that associates the gift card activity with an
  /// entity in another system.
  final String? referenceId;

  @override
  List<Object?> get props => [
        amountMoney,
        paymentId,
        redeemActivityId,
        referenceId,
      ];
}
