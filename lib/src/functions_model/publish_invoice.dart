import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'publish_invoice.g.dart';

@JsonSerializable()
class PublishInvoiceRequest extends Equatable {
  const PublishInvoiceRequest({
    required this.version,
    this.idempotencyKey,
  });

  /// Converts a [Map] to an [PublishInvoiceRequest]
  factory PublishInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$PublishInvoiceRequestFromJson(json);

  /// Converts a [PublishInvoiceRequest] to a [Map]
  Map<String, dynamic> toJson() => _$PublishInvoiceRequestToJson(this);

  /// The version of the invoice to publish. This must match the current
  /// version of the invoice; otherwise, the request is rejected.
  final int version;

  /// A unique string that identifies the `PublishInvoice` request. If you do
  /// not provide `idempotency_key` (or provide an empty string as the value),
  /// the endpoint treats each request as independent.
  final String? idempotencyKey;

  @override
  List<Object?> get props => [version, idempotencyKey];
}

@JsonSerializable()
class PublishInvoiceResponse extends SquareResponse {
  const PublishInvoiceResponse({
    this.invoice,
    super.errors,
  });

  /// Converts a [Map] to an [PublishInvoiceResponse]
  factory PublishInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$PublishInvoiceResponseFromJson(json);

  /// Converts a [PublishInvoiceResponse] to a [Map]
  Map<String, dynamic> toJson() => _$PublishInvoiceResponseToJson(this);

  /// The published invoice.
  final Invoice? invoice;

  @override
  List<Object?> get props => [invoice, errors];
}
