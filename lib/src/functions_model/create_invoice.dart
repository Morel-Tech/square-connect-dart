import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_invoice.g.dart';

@JsonSerializable()
class CreateInvoiceRequest extends Equatable {
  const CreateInvoiceRequest({
    required this.invoice,
    this.idempotencyKey,
  });

  /// Converts a [Map] to an [CreateInvoiceRequest]
  factory CreateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceRequestFromJson(json);

  /// Converts a [CreateInvoiceRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateInvoiceRequestToJson(this);

  /// The invoice to create.
  final Invoice invoice;

  /// A unique string that identifies the `CreateInvoice` request. If you do
  /// not provide `idempotency_key` (or provide an empty string as the value),
  /// the endpoint treats each request as independent.
  final String? idempotencyKey;

  @override
  List<Object?> get props => [invoice, idempotencyKey];
}

@JsonSerializable()
class CreateInvoiceResponse extends SquareResponse {
  const CreateInvoiceResponse({this.invoice, super.errors});

  /// Converts a [Map] to an [CreateInvoiceResponse]
  factory CreateInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceResponseFromJson(json);

  /// Converts a [CreateInvoiceResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateInvoiceResponseToJson(this);

  /// The newly created invoice.
  final Invoice? invoice;

  @override
  List<Object?> get props => [invoice, errors];
}
