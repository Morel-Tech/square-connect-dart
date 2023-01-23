import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'update_invoice.g.dart';

@JsonSerializable()
class UpdateInvoiceRequest extends Equatable {
  const UpdateInvoiceRequest({
    required this.invoice,
    this.idempotencyKey,
    this.fieldsToClear,
  });

  /// Converts a [Map] to an [UpdateInvoiceRequest]
  factory UpdateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateInvoiceRequestFromJson(json);

  /// Converts a [UpdateInvoiceRequest] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateInvoiceRequestToJson(this);

  /// The invoice fields to update. The current invoice version must be
  /// specified in the version field.
  final Invoice invoice;

  /// A unique string that identifies the `UpdateInvoice` request. If you do
  /// not provide `idempotency_key` (or provide an empty string as the value),
  /// the endpoint treats each request as independent.
  final String? idempotencyKey;

  /// The list of fields to clear.
  final List<String>? fieldsToClear;

  @override
  List<Object?> get props => [invoice, idempotencyKey, fieldsToClear];
}

@JsonSerializable()
class UpdateInvoiceResponse extends SquareResponse {
  const UpdateInvoiceResponse({
    this.invoice,
    super.errors,
  });

  /// Converts a [Map] to an [UpdateInvoiceResponse]
  factory UpdateInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateInvoiceResponseFromJson(json);

  /// Converts a [UpdateInvoiceResponse] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateInvoiceResponseToJson(this);

  /// The updated invoice.
  final Invoice? invoice;

  @override
  List<Object?> get props => [invoice, errors];
}
