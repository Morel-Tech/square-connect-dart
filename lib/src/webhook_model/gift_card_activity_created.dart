import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_created.g.dart';

@JsonSerializable()
class GiftCardActivityCreatedEvent extends WebhookEvent {
  const GiftCardActivityCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [GiftCardActivityCreatedEvent]
  factory GiftCardActivityCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityCreatedEventFromJson(json);

  /// Converts a [GiftCardActivityCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$GiftCardActivityCreatedEventToJson(this);

  final GiftCardActivityCreatedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class GiftCardActivityCreatedSquareEventData extends WebhookData {
  const GiftCardActivityCreatedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [GiftCardActivityCreatedSquareEventData]
  factory GiftCardActivityCreatedSquareEventData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardActivityCreatedSquareEventDataFromJson(json);

  /// Converts a [GiftCardActivityCreatedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityCreatedSquareEventDataToJson(this);

  final GiftCardActivityCreatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class GiftCardActivityCreatedSquareEventObject extends Equatable {
  const GiftCardActivityCreatedSquareEventObject({
    required this.giftCardActivity,
  });

  /// Converts a [Map] to an [GiftCardActivityCreatedSquareEventObject]
  factory GiftCardActivityCreatedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GiftCardActivityCreatedSquareEventObjectFromJson(json);

  /// Converts a [GiftCardActivityCreatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityCreatedSquareEventObjectToJson(this);

  final GiftCardActivity giftCardActivity;

  @override
  List<Object> get props => [giftCardActivity];
}
