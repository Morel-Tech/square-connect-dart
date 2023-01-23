import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_query.g.dart';

@JsonSerializable()
class InvoiceQuery extends Equatable {
  const InvoiceQuery({
    required this.filter,
    this.sort,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceQuery]
  factory InvoiceQuery.fromJson(Map<String, dynamic> json) =>
      _$InvoiceQueryFromJson(json);

  /// Converts a [InvoiceQuery] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceQueryToJson(this);

  /// Query filters to apply in searching invoices.
  final InvoiceFilter filter;

  /// Describes the sort order for the search result.
  final InvoiceSort? sort;

  @override
  List<Object?> get props => [filter, sort];
}
