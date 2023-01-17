import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_redeem.g.dart';

@JsonSerializable()
class GiftCardActivityRedeem extends Equatable {
  const GiftCardActivityRedeem({
    required this.amountMoney,
    this.paymentId,
    this.referenceId,
    this.status,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityRedeem]
  factory GiftCardActivityRedeem.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityRedeemFromJson(json);

  /// Converts a [GiftCardActivityRedeem] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityRedeemToJson(this);

  /// The amount deducted from the gift card for the redemption. This value is
  /// a positive integer.
  ///
  /// Applications that use a custom payment processing system must specify
  /// this amount in the CreateGiftCardActivity request.
  final Money amountMoney;

  /// **Read only** The ID of the payment that represents the gift card
  /// redemption. Square populates this field if the payment was processed by
  /// Square.
  final String? paymentId;

  /// A client-specified ID that associates the gift card activity with an
  /// entity in another system.
  ///
  /// Applications that use a custom payment processing system can use this
  /// field to track information related to an order or payment.
  final String? referenceId;

  /// **Read only** The status of the gift card redemption. Gift cards redeemed
  /// from Square Point of Sale or the Square Seller Dashboard use a two-state
  /// process: `PENDING` to `COMPLETED` or `PENDING` to `CANCELED`. Gift cards
  /// redeemed using the Gift Card Activities API always have a `COMPLETED`
  /// status.
  final GiftCardActivityRedeemStatus? status;

  @override
  List<Object?> get props => [amountMoney, paymentId, referenceId, status];
}
