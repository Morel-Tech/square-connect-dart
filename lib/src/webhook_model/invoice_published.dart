import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'invoice_published.g.dart';

@JsonSerializable()
class InvoicePublishedEvent extends WebhookEvent {
  const InvoicePublishedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoicePublishedEvent]
  factory InvoicePublishedEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoicePublishedEventFromJson(json);

  /// Converts a [InvoicePublishedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoicePublishedEventToJson(this);

  final InvoicePublishedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoicePublishedSquareEventData extends WebhookData {
  const InvoicePublishedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoicePublishedSquareEventData]
  factory InvoicePublishedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$InvoicePublishedSquareEventDataFromJson(json);

  /// Converts a [InvoicePublishedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$InvoicePublishedSquareEventDataToJson(this);

  final InvoicePublishedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoicePublishedSquareEventObject extends Equatable {
  const InvoicePublishedSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoicePublishedSquareEventObject]
  factory InvoicePublishedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoicePublishedSquareEventObjectFromJson(json);

  /// Converts a [InvoicePublishedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoicePublishedSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object> get props => [invoice];
}
