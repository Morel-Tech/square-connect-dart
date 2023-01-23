import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'invoice_created.g.dart';

@JsonSerializable()
class InvoiceCreatedEvent extends WebhookEvent {
  const InvoiceCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoiceCreatedEvent]
  factory InvoiceCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreatedEventFromJson(json);

  /// Converts a [InvoiceCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceCreatedEventToJson(this);

  final InvoiceCreatedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoiceCreatedSquareEventData extends WebhookData {
  const InvoiceCreatedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoiceCreatedSquareEventData]
  factory InvoiceCreatedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreatedSquareEventDataFromJson(json);

  /// Converts a [InvoiceCreatedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceCreatedSquareEventDataToJson(this);

  final InvoiceCreatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoiceCreatedSquareEventObject extends Equatable {
  const InvoiceCreatedSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoiceCreatedSquareEventObject]
  factory InvoiceCreatedSquareEventObject.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreatedSquareEventObjectFromJson(json);

  /// Converts a [InvoiceCreatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoiceCreatedSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object> get props => [invoice];
}
