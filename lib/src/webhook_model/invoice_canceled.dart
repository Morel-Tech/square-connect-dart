import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_canceled.g.dart';

@JsonSerializable()
class InvoiceCanceledEvent extends WebhookEvent {
  const InvoiceCanceledEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoiceCanceledEvent]
  factory InvoiceCanceledEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCanceledEventFromJson(json);

  /// Converts a [InvoiceCanceledEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceCanceledEventToJson(this);

  final InvoiceCanceledSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoiceCanceledSquareEventData extends WebhookData {
  const InvoiceCanceledSquareEventData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [InvoiceCanceledSquareEventData]
  factory InvoiceCanceledSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCanceledSquareEventDataFromJson(json);

  /// Converts a [InvoiceCanceledSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceCanceledSquareEventDataToJson(this);

  final InvoiceCanceledSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class InvoiceCanceledSquareEventObject extends Equatable {
  const InvoiceCanceledSquareEventObject({
    required this.invoice,
  });

  /// Converts a [Map] to an [InvoiceCanceledSquareEventObject]
  factory InvoiceCanceledSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InvoiceCanceledSquareEventObjectFromJson(json);

  /// Converts a [InvoiceCanceledSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$InvoiceCanceledSquareEventObjectToJson(this);

  final Invoice invoice;

  @override
  List<Object?> get props => [invoice];
}
