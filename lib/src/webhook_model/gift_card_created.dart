import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'gift_card_created.g.dart';

@JsonSerializable()
class GiftCardCreatedEvent extends WebhookEvent {
  const GiftCardCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [GiftCardCreatedEvent]
  factory GiftCardCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$GiftCardCreatedEventFromJson(json);

  /// Converts a [GiftCardCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardCreatedEventToJson(this);

  final GiftCardCreatedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class GiftCardCreatedSquareEventData extends WebhookData {
  const GiftCardCreatedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [GiftCardCreatedSquareEventData]
  factory GiftCardCreatedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$GiftCardCreatedSquareEventDataFromJson(json);

  /// Converts a [GiftCardCreatedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardCreatedSquareEventDataToJson(this);

  final GiftCardCreatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class GiftCardCreatedSquareEventObject extends Equatable {
  const GiftCardCreatedSquareEventObject({
    required this.giftCard,
  });

  /// Converts a [Map] to an [GiftCardCreatedSquareEventObject]
  factory GiftCardCreatedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardCreatedSquareEventObjectFromJson(json);

  /// Converts a [GiftCardCreatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$GiftCardCreatedSquareEventObjectToJson(this);

  final GiftCard giftCard;

  @override
  List<Object> get props => [giftCard];
}
