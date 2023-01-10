import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders_filter.g.dart';

@JsonSerializable()
class SearchOrdersFilter extends Equatable {
  const SearchOrdersFilter({
    this.stateFilter,
    this.dateTimeFilter,
    this.fulfillmentFilter,
    this.sourceFilter,
    this.customerFilter,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersFilter]
  factory SearchOrdersFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersFilterFromJson(json);

  /// Converts a [SearchOrdersFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersFilterToJson(this);

  /// Filter by `OrderState`.
  final SearchOrdersStateFilter? stateFilter;

  /// Filter for results within a time range.
  ///
  /// Important: If you filter for orders by time range, you must set
  /// `SearchOrdersSort` to sort by the same field.
  final SearchOrdersDateTimeFilter? dateTimeFilter;

  /// Filter by the fulfillment type or state.
  final SearchOrdersFulfillmentFilter? fulfillmentFilter;

  /// Filter by the source of the order.
  final SearchOrdersSourceFilter? sourceFilter;

  /// Filter by customers associated with the order.
  final SearchOrdersCustomerFilter? customerFilter;

  @override
  List<Object?> get props => [
        stateFilter,
        dateTimeFilter,
        fulfillmentFilter,
        sourceFilter,
        customerFilter,
      ];
}
