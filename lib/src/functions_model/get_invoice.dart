import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'get_invoice.g.dart';

@JsonSerializable()
class GetInvoiceResponse extends SquareResponse {
  const GetInvoiceResponse({
    this.invoice,
    super.errors,
  });

  /// Converts a [Map] to an [GetInvoiceResponse]
  factory GetInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetInvoiceResponseFromJson(json);

  /// Converts a [GetInvoiceResponse] to a [Map]
  Map<String, dynamic> toJson() => _$GetInvoiceResponseToJson(this);

  /// The invoice requested.
  final Invoice? invoice;

  @override
  List<Object?> get props => [invoice, errors];
}
