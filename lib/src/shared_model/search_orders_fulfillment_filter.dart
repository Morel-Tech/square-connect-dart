import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders_fulfillment_filter.g.dart';

@JsonSerializable()
class SearchOrdersFulfillmentFilter extends Equatable {
  const SearchOrdersFulfillmentFilter({
    this.fulfillmentStates,
    this.fulfillmentTypes,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersFulfillmentFilter]
  factory SearchOrdersFulfillmentFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersFulfillmentFilterFromJson(json);

  /// Converts a [SearchOrdersFulfillmentFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersFulfillmentFilterToJson(this);

  /// A list of fulfillment states to filter for. The list returns orders if
  ///  any of its fulfillments match any of the fulfillment states listed in
  /// this field.
  final List<OrderFulfillmentState>? fulfillmentStates;

  /// A list of fulfillment types to filter for. The list returns orders if
  /// any of its fulfillments match any of the fulfillment types listed in
  /// this field.
  final List<OrderFulfillmentType>? fulfillmentTypes;

  @override
  List<Object?> get props => [fulfillmentStates, fulfillmentTypes];
}
