import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_invoices.g.dart';

@JsonSerializable()
class ListInvoicesResponse extends SquareResponse {
  const ListInvoicesResponse({
    this.invoices,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [ListInvoicesResponse]
  factory ListInvoicesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListInvoicesResponseFromJson(json);

  /// Converts a [ListInvoicesResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListInvoicesResponseToJson(this);

  /// The invoices retrieved.
  final List<Invoice>? invoices;

  /// When a response is truncated, it includes a cursor that you can use in a
  /// subsequent request to retrieve the next set of invoices. If empty, this
  /// is the final response.
  final String? cursor;

  @override
  List<Object?> get props => [invoices, cursor, errors];
}
