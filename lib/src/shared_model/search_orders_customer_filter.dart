import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_orders_customer_filter.g.dart';

@JsonSerializable()
class SearchOrdersCustomerFilter extends Equatable {
  const SearchOrdersCustomerFilter({
    this.customerIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersCustomerFilter]
  factory SearchOrdersCustomerFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersCustomerFilterFromJson(json);

  /// Converts a [SearchOrdersCustomerFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersCustomerFilterToJson(this);

  /// A list of customer IDs to filter by.
  ///
  /// Max: 10 customer IDs.
  final List<String>? customerIds;

  @override
  List<Object?> get props => [customerIds];
}
