import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_updated.g.dart';

@JsonSerializable()
class GiftCardActivityUpdatedEvent extends WebhookEvent {
  const GiftCardActivityUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [GiftCardActivityUpdatedEvent]
  factory GiftCardActivityUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityUpdatedEventFromJson(json);

  /// Converts a [GiftCardActivityUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardActivityUpdatedEventToJson(this);

  final GiftCardActivityUpdatedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class GiftCardActivityUpdatedSquareEventData extends WebhookData {
  const GiftCardActivityUpdatedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [GiftCardActivityUpdatedSquareEventData]
  factory GiftCardActivityUpdatedSquareEventData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardActivityUpdatedSquareEventDataFromJson(json);

  /// Converts a [GiftCardActivityUpdatedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityUpdatedSquareEventDataToJson(this);

  final GiftCardActivityUpdatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class GiftCardActivityUpdatedSquareEventObject extends Equatable {
  const GiftCardActivityUpdatedSquareEventObject({
    required this.giftCardActivity,
  });

  /// Converts a [Map] to an [GiftCardActivityUpdatedSquareEventObject]
  factory GiftCardActivityUpdatedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardActivityUpdatedSquareEventObjectFromJson(json);

  /// Converts a [GiftCardActivityUpdatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityUpdatedSquareEventObjectToJson(this);

  final GiftCardActivity giftCardActivity;

  @override
  List<Object> get props => [giftCardActivity];
}
