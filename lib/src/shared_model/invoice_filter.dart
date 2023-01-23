import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice_filter.g.dart';

@JsonSerializable()
class InvoiceFilter extends Equatable {
  const InvoiceFilter({
    required this.locationIds,
    this.customerIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceFilter]
  factory InvoiceFilter.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFilterFromJson(json);

  /// Converts a [InvoiceFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceFilterToJson(this);

  /// Limits the search to the specified locations. A location is required. In
  /// the current implementation, only one location can be specified.
  final List<String> locationIds;

  /// Limits the search to the specified customers, within the specified
  /// locations. Specifying a customer is optional. In the current
  /// implementation, a maximum of one customer can be specified.
  final List<String>? customerIds;

  @override
  List<Object?> get props => [locationIds, customerIds];
}
