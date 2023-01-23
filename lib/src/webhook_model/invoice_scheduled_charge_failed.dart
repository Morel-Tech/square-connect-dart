import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'invoice_scheduled_charge_failed.g.dart';

@JsonSerializable()
class InvoiceScheduledChargeFailedEvent extends WebhookEvent {
  const InvoiceScheduledChargeFailedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoiceScheduledChargeFailedEvent]
  factory InvoiceScheduledChargeFailedEvent.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoiceScheduledChargeFailedEventFromJson(json);

  /// Converts a [InvoiceScheduledChargeFailedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$InvoiceScheduledChargeFailedEventToJson(this);

  final InvoiceScheduledChargeFailedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoiceScheduledChargeFailedSquareEventData extends WebhookData {
  const InvoiceScheduledChargeFailedSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoiceScheduledChargeFailedSquareEventData]
  factory InvoiceScheduledChargeFailedSquareEventData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoiceScheduledChargeFailedSquareEventDataFromJson(json);

  /// Converts a [InvoiceScheduledChargeFailedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$InvoiceScheduledChargeFailedSquareEventDataToJson(this);

  final InvoiceScheduledChargeFailedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoiceScheduledChargeFailedSquareEventObject extends Equatable {
  const InvoiceScheduledChargeFailedSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoiceScheduledChargeFailedSquareEventObject]
  factory InvoiceScheduledChargeFailedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoiceScheduledChargeFailedSquareEventObjectFromJson(json);

  /// Converts a [InvoiceScheduledChargeFailedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoiceScheduledChargeFailedSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object> get props => [invoice];
}
