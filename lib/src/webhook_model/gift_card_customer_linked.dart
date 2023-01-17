import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'gift_card_customer_linked.g.dart';

@JsonSerializable()
class GiftCardCustomerLinkedEvent extends WebhookEvent {
  const GiftCardCustomerLinkedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [GiftCardCustomerLinkedEvent]
  factory GiftCardCustomerLinkedEvent.fromJson(Map<String, dynamic> json) =>
      _$GiftCardCustomerLinkedEventFromJson(json);

  /// Converts a [GiftCardCustomerLinkedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardCustomerLinkedEventToJson(this);

  final GiftCardCustomerLinkedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class GiftCardCustomerLinkedSquareEventData extends WebhookData {
  const GiftCardCustomerLinkedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [GiftCardCustomerLinkedSquareEventData]
  factory GiftCardCustomerLinkedSquareEventData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardCustomerLinkedSquareEventDataFromJson(json);

  /// Converts a [GiftCardCustomerLinkedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$GiftCardCustomerLinkedSquareEventDataToJson(this);

  final GiftCardCustomerLinkedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class GiftCardCustomerLinkedSquareEventObject extends Equatable {
  const GiftCardCustomerLinkedSquareEventObject({
    required this.linkedCustomerId,
    required this.giftCard,
  });

  /// Converts a [Map] to an [GiftCardCustomerLinkedSquareEventObject]
  factory GiftCardCustomerLinkedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardCustomerLinkedSquareEventObjectFromJson(json);

  /// Converts a [GiftCardCustomerLinkedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$GiftCardCustomerLinkedSquareEventObjectToJson(this);

  final String linkedCustomerId;
  final GiftCard giftCard;

  @override
  List<Object> get props => [linkedCustomerId, giftCard];
}
