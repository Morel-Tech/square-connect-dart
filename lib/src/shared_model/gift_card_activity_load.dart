import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_load.g.dart';

@JsonSerializable()
class GiftCardActivityLoad extends Equatable {
  const GiftCardActivityLoad({
    this.amountMoney,
    this.buyerPaymentInstrumentIds,
    this.lineItemUid,
    this.orderId,
    this.referenceId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityLoad]
  factory GiftCardActivityLoad.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityLoadFromJson(json);

  /// Converts a [GiftCardActivityLoad] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityLoadToJson(this);

  /// The amount added to the gift card. This value is a positive integer.
  ///
  /// Applications that use a custom order processing system must specify this
  /// amount in the CreateGiftCardActivity request.
  final Money? amountMoney;

  /// The payment instrument IDs used to process the order for the additional
  /// funds, such as a credit card ID or bank account ID.
  ///
  /// Applications that use a custom order processing system must specify
  /// payment instrument IDs in the CreateGiftCardActivity request. Square uses
  /// this information to perform compliance checks.
  ///
  /// For applications that use the Square Orders API to process payments,
  /// Square has the necessary instrument IDs to perform compliance checks.
  final List<String>? buyerPaymentInstrumentIds;

  /// The UID of the `GIFT_CARD` line item in the order that represents the
  /// additional funds for the gift card.
  ///
  /// Applications that use the Square Orders API to process orders must
  /// specify the line item UID in the CreateGiftCardActivity request.
  final String? lineItemUid;

  /// The ID of the order that contains the `GIFT_CARD` line item.
  ///
  /// Applications that use the Square Orders API to process orders must
  /// specify the order ID in the CreateGiftCardActivity request.
  final String? orderId;

  /// A client-specified ID that associates the gift card activity with an
  /// entity in another system.
  ///
  /// Applications that use a custom order processing system can use this field
  /// to track information related to an order or payment.
  final String? referenceId;

  @override
  List<Object?> get props => [
        amountMoney,
        buyerPaymentInstrumentIds,
        lineItemUid,
        orderId,
        referenceId,
      ];
}
