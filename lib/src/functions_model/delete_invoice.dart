import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'delete_invoice.g.dart';

@JsonSerializable()
class DeleteInvoiceResponse extends SquareResponse {
  const DeleteInvoiceResponse({super.errors});

  /// Converts a [Map] to an [DeleteInvoiceResponse]
  factory DeleteInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteInvoiceResponseFromJson(json);

  /// Converts a [DeleteInvoiceResponse] to a [Map]
  Map<String, dynamic> toJson() => _$DeleteInvoiceResponseToJson(this);

  @override
  List<Object?> get props => [errors];
}
