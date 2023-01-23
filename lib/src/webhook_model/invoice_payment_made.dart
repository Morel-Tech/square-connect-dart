import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'invoice_payment_made.g.dart';

@JsonSerializable()
class InvoicePaymentMadeEvent extends WebhookEvent {
  const InvoicePaymentMadeEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoicePaymentMadeEvent]
  factory InvoicePaymentMadeEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentMadeEventFromJson(json);

  /// Converts a [InvoicePaymentMadeEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoicePaymentMadeEventToJson(this);

  final InvoicePaymentMadeSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoicePaymentMadeSquareEventData extends WebhookData {
  const InvoicePaymentMadeSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoicePaymentMadeSquareEventData]
  factory InvoicePaymentMadeSquareEventData.fromJson(
          Map<String, dynamic> json,) =>
      _$InvoicePaymentMadeSquareEventDataFromJson(json);

  /// Converts a [InvoicePaymentMadeSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$InvoicePaymentMadeSquareEventDataToJson(this);

  final InvoicePaymentMadeSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoicePaymentMadeSquareEventObject extends Equatable {
  const InvoicePaymentMadeSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoicePaymentMadeSquareEventObject]
  factory InvoicePaymentMadeSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoicePaymentMadeSquareEventObjectFromJson(json);

  /// Converts a [InvoicePaymentMadeSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoicePaymentMadeSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object> get props => [invoice];
}
