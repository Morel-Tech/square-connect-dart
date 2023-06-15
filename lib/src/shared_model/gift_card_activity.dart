import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity.g.dart';

@JsonSerializable()
class GiftCardActivity extends Equatable {
  const GiftCardActivity({
    required this.type,
    required this.locationId,
    this.id,
    this.createdAt,
    this.giftCardId,
    this.giftCardGan,
    this.giftCardBalanceMoney,
    this.loadActivityDetails,
    this.activateActivityDetails,
    this.redeemActivityDetails,
    this.clearBalanceActivityDetails,
    this.deactivateActivityDetails,
    this.adjustIncrementActivityDetails,
    this.adjustDecrementActivityDetails,
    this.refundActivityDetails,
    this.unlinkedActivityRefundActivityDetails,
    this.importActivityDetails,
    this.blockActivityDetails,
    this.unblockActivityDetails,
    this.importReversalActivityDetails,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivity]
  factory GiftCardActivity.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityFromJson(json);

  /// Converts a [GiftCardActivity] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityToJson(this);

  /// **Read only** The Square-assigned ID of the gift card activity.
  final String? id;

  /// The type of gift card activity.
  final GiftCardActivityType type;

  /// The ID of the business location where the activity occurred.
  final String locationId;

  /// **Read only** The timestamp when the gift card activity was created,
  /// in RFC 3339 format.
  final DateTime? createdAt;

  /// The gift card ID. When creating a gift card activity, `gift_card_id` is
  /// not required if `gift_card_gan` is specified.
  final String? giftCardId;

  /// The gift card account number (GAN). When creating a gift card activity,
  /// `gift_card_gan` is not required if `gift_card_id` is specified.
  final String? giftCardGan;

  /// **Read only** The final balance on the gift card after the action
  /// is completed.
  final Money? giftCardBalanceMoney;

  /// Additional details about a `LOAD` activity, which is used to reload
  /// money onto a gift card.
  final GiftCardActivityLoad? loadActivityDetails;

  /// Additional details about an `ACTIVATE` activity, which is used to
  /// activate a gift card with an initial balance.
  final GiftCardActivityActivate? activateActivityDetails;

  /// Additional details about a `REDEEM` activity, which is used to redeem a
  /// gift card for a purchase.
  ///
  /// For applications that process payments using the Square Payments API,
  /// Square creates a `REDEEM` activity that updates the gift card balance
  /// after the corresponding CreatePayment request is completed. Applications
  /// that use a custom payment processing system must call
  /// CreateGiftCardActivity to create the `REDEEM` activity.
  final GiftCardActivityRedeem? redeemActivityDetails;

  /// Additional details about a `CLEAR_BALANCE` activity, which is used to set
  /// the balance of a gift card to zero.
  final GiftCardActivityClearBalance? clearBalanceActivityDetails;

  /// Additional details about a `DEACTIVATE` activity, which is used to
  /// deactivate a gift card.
  final GiftCardActivityDeactivate? deactivateActivityDetails;

  /// Additional details about an `ADJUST_INCREMENT` activity, which is used
  /// to add money to a gift card outside of a typical `ACTIVATE`, `LOAD`, or
  /// `REFUND` activity flow.
  final GiftCardActivityAdjustIncrement? adjustIncrementActivityDetails;

  /// Additional details about an `ADJUST_DECREMENT` activity, which is used
  /// to deduct money from a gift card outside of a typical `REDEEM` activity
  /// flow.
  final GiftCardActivityAdjustDecrement? adjustDecrementActivityDetails;

  /// Additional details about a `REFUND` activity, which is used to add money
  /// to a gift card when refunding a payment.
  ///
  /// For applications that process payments using the Square Payments API,
  /// Square creates a `REFUND` activity that updates the gift card balance
  /// after the corresponding RefundPayment request is completed. Applications
  /// that use a custom payment processing system must call
  /// CreateGiftCardActivity to create the `REFUND` activity.
  final GiftCardActivityRefund? refundActivityDetails;

  /// Additional details about an `UNLINKED_ACTIVITY_REFUND` activity. This
  /// activity is used to add money to a gift card when refunding a payment
  /// that was processed using a custom payment processing system and not
  /// linked to the gift card.
  final GiftCardActivityUnlinkedActivityRefund?
      unlinkedActivityRefundActivityDetails;

  /// **Read only** Additional details about an `IMPORT` activity, which Square
  /// uses to import a third-party gift card with a balance.
  final GiftCardActivityImport? importActivityDetails;

  /// **Read only** Additional details about a `BLOCK` activity, which Square
  /// uses to temporarily block a gift card.
  final GiftCardActivityBlock? blockActivityDetails;

  /// **Read only** Additional details about an `UNBLOCK` activity, which
  /// Square uses to unblock a gift card.
  final GiftCardActivityUnblock? unblockActivityDetails;

  /// **Read only** Additional details about an `IMPORT_REVERSAL` activity,
  /// which Square uses to reverse the import of a third-party gift card.
  final GiftCardActivityImportReversal? importReversalActivityDetails;

  @override
  List<Object?> get props => [
        id,
        type,
        locationId,
        createdAt,
        giftCardId,
        giftCardGan,
        giftCardBalanceMoney,
        loadActivityDetails,
        activateActivityDetails,
        redeemActivityDetails,
        clearBalanceActivityDetails,
        deactivateActivityDetails,
        adjustIncrementActivityDetails,
        adjustDecrementActivityDetails,
        refundActivityDetails,
        unlinkedActivityRefundActivityDetails,
        importActivityDetails,
        blockActivityDetails,
        unblockActivityDetails,
        importReversalActivityDetails,
      ];
}
