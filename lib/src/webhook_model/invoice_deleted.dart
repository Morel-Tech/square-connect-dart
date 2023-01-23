import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_deleted.g.dart';

@JsonSerializable()
class InvoiceDeletedEvent extends WebhookEvent {
  const InvoiceDeletedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [InvoiceDeletedEvent]
  factory InvoiceDeletedEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDeletedEventFromJson(json);

  /// Converts a [InvoiceDeletedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceDeletedEventToJson(this);

  final InvoiceDeletedSquareEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class InvoiceDeletedSquareEventData extends WebhookData {
  const InvoiceDeletedSquareEventData({
    required super.id,
    required super.type,
    required this.deleted,
  });

  /// Converts a [Map] to an [InvoiceDeletedSquareEventData]
  factory InvoiceDeletedSquareEventData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDeletedSquareEventDataFromJson(json);

  /// Converts a [InvoiceDeletedSquareEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$InvoiceDeletedSquareEventDataToJson(this);

  final bool deleted;

  @override
  List<Object?> get props => [...super.props, deleted];
}
