import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_customer_unlinked.g.dart';

@JsonSerializable()
class GiftCardCustomerUnlinkedEvent extends WebhookEvent {
  const GiftCardCustomerUnlinkedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [GiftCardCustomerUnlinkedEvent]
  factory GiftCardCustomerUnlinkedEvent.fromJson(Map<String, dynamic> json) =>
      _$GiftCardCustomerUnlinkedEventFromJson(json);

  /// Converts a [GiftCardCustomerUnlinkedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardCustomerUnlinkedEventToJson(this);

  final GiftCardCustomerUnlinkedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class GiftCardCustomerUnlinkedSquareEventData extends WebhookData {
  const GiftCardCustomerUnlinkedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [GiftCardCustomerUnlinkedSquareEventData]
  factory GiftCardCustomerUnlinkedSquareEventData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardCustomerUnlinkedSquareEventDataFromJson(json);

  /// Converts a [GiftCardCustomerUnlinkedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$GiftCardCustomerUnlinkedSquareEventDataToJson(this);

  final GiftCardCustomerUnlinkedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class GiftCardCustomerUnlinkedSquareEventObject extends Equatable {
  const GiftCardCustomerUnlinkedSquareEventObject({
    required this.unlinkedCustomerId,
    required this.giftCard,
  });

  /// Converts a [Map] to an [GiftCardCustomerUnlinkedSquareEventObject]
  factory GiftCardCustomerUnlinkedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardCustomerUnlinkedSquareEventObjectFromJson(json);

  /// Converts a [GiftCardCustomerUnlinkedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$GiftCardCustomerUnlinkedSquareEventObjectToJson(this);

  final String unlinkedCustomerId;
  final GiftCard giftCard;

  @override
  List<Object> get props => [unlinkedCustomerId, giftCard];
}
