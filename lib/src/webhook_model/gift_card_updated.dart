import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_updated.g.dart';

@JsonSerializable()
class GiftCardUpdatedEvent extends WebhookEvent {
  const GiftCardUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [GiftCardUpdatedEvent]
  factory GiftCardUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$GiftCardUpdatedEventFromJson(json);

  /// Converts a [GiftCardUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardUpdatedEventToJson(this);

  final GiftCardUpdatedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class GiftCardUpdatedSquareEventData extends WebhookData {
  const GiftCardUpdatedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [GiftCardUpdatedSquareEventData]
  factory GiftCardUpdatedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$GiftCardUpdatedSquareEventDataFromJson(json);

  /// Converts a [GiftCardUpdatedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardUpdatedSquareEventDataToJson(this);

  final GiftCardUpdatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class GiftCardUpdatedSquareEventObject extends Equatable {
  const GiftCardUpdatedSquareEventObject({
    required this.giftCard,
  });

  /// Converts a [Map] to an [GiftCardUpdatedSquareEventObject]
  factory GiftCardUpdatedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardUpdatedSquareEventObjectFromJson(json);

  /// Converts a [GiftCardUpdatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$GiftCardUpdatedSquareEventObjectToJson(this);

  final GiftCard giftCard;

  @override
  List<Object> get props => [giftCard];
}
