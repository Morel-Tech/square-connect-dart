import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_sort.g.dart';

@JsonSerializable()
class InvoiceSort extends Equatable {
  const InvoiceSort({
    required this.field,
    this.order,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceSort]
  factory InvoiceSort.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSortFromJson(json);

  /// Converts a [InvoiceSort] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceSortToJson(this);

  /// The field to use for sorting.
  final InvoiceSortField field;

  /// The order to use for sorting the results.
  final SortOrder? order;

  @override
  List<Object?> get props => [field, order];
}
