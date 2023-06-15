import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'invoice_refunded.g.dart';

@JsonSerializable()
class InvoiceRefundedEvent extends WebhookEvent {
  const InvoiceRefundedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoiceRefundedEvent]
  factory InvoiceRefundedEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRefundedEventFromJson(json);

  /// Converts a [InvoiceRefundedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceRefundedEventToJson(this);

  final InvoiceRefundedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoiceRefundedSquareEventData extends WebhookData {
  const InvoiceRefundedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoiceRefundedSquareEventData]
  factory InvoiceRefundedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRefundedSquareEventDataFromJson(json);

  /// Converts a [InvoiceRefundedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceRefundedSquareEventDataToJson(this);

  final InvoiceRefundedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoiceRefundedSquareEventObject extends Equatable {
  const InvoiceRefundedSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoiceRefundedSquareEventObject]
  factory InvoiceRefundedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoiceRefundedSquareEventObjectFromJson(json);

  /// Converts a [InvoiceRefundedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoiceRefundedSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object> get props => [invoice];
}
