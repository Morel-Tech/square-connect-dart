import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'link_customer_to_gift_card.g.dart';

@JsonSerializable()
class LinkCustomerToGiftCardRequest extends Equatable {
  const LinkCustomerToGiftCardRequest({
    required this.customerId,
  });

  /// Converts a [Map] to an [LinkCustomerToGiftCardRequest]
  factory LinkCustomerToGiftCardRequest.fromJson(Map<String, dynamic> json) =>
      _$LinkCustomerToGiftCardRequestFromJson(json);

  /// Converts a [LinkCustomerToGiftCardRequest] to a [Map]
  Map<String, dynamic> toJson() => _$LinkCustomerToGiftCardRequestToJson(this);

  /// The ID of the customer to link to the gift card.
  final String customerId;

  @override
  List<Object?> get props => [customerId];
}

@JsonSerializable()
class LinkCustomerToGiftCardResponse extends SquareResponse {
  const LinkCustomerToGiftCardResponse({this.giftCard, super.errors});

  /// Converts a [Map] to an [LinkCustomerToGiftCardResponse]
  factory LinkCustomerToGiftCardResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkCustomerToGiftCardResponseFromJson(json);

  /// Converts a [LinkCustomerToGiftCardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$LinkCustomerToGiftCardResponseToJson(this);

  /// The gift card with the ID of the linked customer listed in the
  /// `customer_ids` field.
  final GiftCard? giftCard;

  @override
  List<Object?> get props => [errors, giftCard];
}
