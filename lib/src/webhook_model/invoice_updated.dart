import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'invoice_updated.g.dart';

@JsonSerializable()
class InvoiceUpdatedEvent extends WebhookEvent {
  const InvoiceUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoiceUpdatedEvent]
  factory InvoiceUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdatedEventFromJson(json);

  /// Converts a [InvoiceUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceUpdatedEventToJson(this);

  final InvoiceUpdatedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoiceUpdatedSquareEventData extends WebhookData {
  const InvoiceUpdatedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoiceUpdatedSquareEventData]
  factory InvoiceUpdatedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdatedSquareEventDataFromJson(json);

  /// Converts a [InvoiceUpdatedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceUpdatedSquareEventDataToJson(this);

  final InvoiceUpdatedSquareEventObject object;
  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoiceUpdatedSquareEventObject extends Equatable {
  const InvoiceUpdatedSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoiceUpdatedSquareEventObject]
  factory InvoiceUpdatedSquareEventObject.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdatedSquareEventObjectFromJson(json);

  /// Converts a [InvoiceUpdatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoiceUpdatedSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object> get props => [invoice];
}
