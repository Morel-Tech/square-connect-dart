import 'package:json_annotation/json_annotation.dart';

enum GiftCardActivityType {
  /// Activated a gift card with a balance. When a gift card is activated,
  /// Square changes the gift card state from `PENDING` to `ACTIVE`. A gift card
  /// must be in the `ACTIVE` state to be used for other balance-changing
  /// activities.
  @JsonValue('ACTIVATE')
  activate,

  /// Loaded a gift card with additional funds.
  @JsonValue('LOAD')
  load,

  /// Redeemed a gift card for a purchase.
  @JsonValue('REDEEM')
  redeem,

  /// Set the balance of a gift card to zero.
  @JsonValue('CLEAR_BALANCE')
  clearBalance,

  /// Permanently blocked a gift card from balance-changing activities.
  @JsonValue('DEACTIVATE')
  deactivate,

  /// Added money to a gift card outside of a typical `ACTIVATE`, `LOAD`, or
  /// `REFUND` activity flow.
  @JsonValue('ADJUST_INCREMENT')
  adjustIncrement,

  /// Deducted money from a gift card outside of a typical REDEEM activity flow.
  @JsonValue('ADJUST_DECREMENT')
  adjustDecrement,

  /// Added money to a gift card from a refunded transaction. A `REFUND
  /// activity might be linked to a Square payment, depending on how the
  /// payment and refund are processed. For example:

  /// - A gift card payment processed by Square can be refunded to the same
  /// gift card using Square Point of Sale, the Square Seller Dashboard, or
  /// the Refunds API.
  /// - A cross-tender payment processed by Square can be refunded to a gift
  /// card using Square Point of Sale or the Square Seller Dashboard. The
  /// payment source might be a credit card or different gift card.
  /// - A payment processed using a custom payment processing system can be
  /// refunded to the same gift card.
  @JsonValue('REFUND')
  refund,

  /// Added money to a gift card from a refunded transaction that was
  /// processed using a custom payment processing system and not linked to
  /// the gift card.
  @JsonValue('UNLINKED_ACTIVITY_REFUND')
  unlinkedActivityRefund,

  /// Imported a third-party gift card with a balance. `IMPORT` activities are
  /// managed by Square and cannot be created using the Gift Card Activities
  /// API.
  @JsonValue('IMPORT')
  import,

  /// Temporarily blocked a gift card from balance-changing activities. `BLOCK`
  /// activities are managed by Square and cannot be created using the Gift
  /// Card Activities API.
  @JsonValue('BLOCK')
  block,

  /// Unblocked a gift card, which enables it to resume balance-changing
  /// activities. `UNBLOCK` activities are managed by Square and cannot be
  /// created using the Gift Card Activities API.
  @JsonValue('UNBLOCK')
  unblock,

  /// Reversed the import of a third-party gift card, which sets the gift card
  /// state to `PENDING` and clears the balance. `IMPORT_REVERSAL` activities
  /// are managed by Square and cannot be created using the Gift Card
  /// Activities API.
  @JsonValue('IMPORT_REVERSAL')
  importReversal,
}
