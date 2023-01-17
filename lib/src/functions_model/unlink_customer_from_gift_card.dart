import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'unlink_customer_from_gift_card.g.dart';

@JsonSerializable()
class UnlinkCustomerFromGiftCardRequest extends Equatable {
  const UnlinkCustomerFromGiftCardRequest({
    required this.customerId,
  });

  /// Converts a [Map] to an [UnlinkCustomerFromGiftCardRequest]
  factory UnlinkCustomerFromGiftCardRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UnlinkCustomerFromGiftCardRequestFromJson(json);

  /// Converts a [UnlinkCustomerFromGiftCardRequest] to a [Map]
  Map<String, dynamic> toJson() =>
      _$UnlinkCustomerFromGiftCardRequestToJson(this);

  /// The ID of the customer to unlink from the gift card.
  final String customerId;

  @override
  List<Object?> get props => [customerId];
}

@JsonSerializable()
class UnlinkCustomerFromGiftCardResponse extends SquareResponse {
  const UnlinkCustomerFromGiftCardResponse({this.giftCard, super.errors});

  /// Converts a [Map] to an [UnlinkCustomerFromGiftCardResponse]
  factory UnlinkCustomerFromGiftCardResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UnlinkCustomerFromGiftCardResponseFromJson(json);

  /// Converts a [UnlinkCustomerFromGiftCardResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$UnlinkCustomerFromGiftCardResponseToJson(this);

  /// The gift card with the ID of the unlinked customer removed from the
  /// `customer_ids` field. If no other customers are linked, the
  /// `customer_ids` field is also removed.
  final GiftCard? giftCard;

  @override
  List<Object?> get props => [giftCard, errors];
}
