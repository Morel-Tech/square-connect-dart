import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'cancel_invoice.g.dart';

@JsonSerializable()
class CancelInvoiceRequest extends Equatable {
  const CancelInvoiceRequest({
    required this.version,
  });

  /// Converts a [Map] to an [CancelInvoiceRequest]
  factory CancelInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelInvoiceRequestFromJson(json);

  /// Converts a [CancelInvoiceRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CancelInvoiceRequestToJson(this);

  /// The version of the invoice to cancel. If you do not know the version,
  /// you can call GetInvoice or ListInvoices.
  final int version;

  @override
  List<Object?> get props => [version];
}

@JsonSerializable()
class CancelInvoiceResponse extends SquareResponse {
  const CancelInvoiceResponse({
    this.invoice,
    super.errors,
  });

  /// Converts a [Map] to an [CancelInvoiceResponse]
  factory CancelInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelInvoiceResponseFromJson(json);

  /// Converts a [CancelInvoiceResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CancelInvoiceResponseToJson(this);

  /// The canceled invoice.
  final Invoice? invoice;

  @override
  List<Object?> get props => [invoice, errors];
}
