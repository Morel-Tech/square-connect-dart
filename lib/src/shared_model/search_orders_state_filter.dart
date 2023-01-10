import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders_state_filter.g.dart';

@JsonSerializable()
class SearchOrdersStateFilter extends Equatable {
  const SearchOrdersStateFilter({
    required this.states,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersStateFilter]
  factory SearchOrdersStateFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersStateFilterFromJson(json);

  /// Converts a [SearchOrdersStateFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersStateFilterToJson(this);

  /// States to filter for.
  final List<OrderState> states;

  @override
  List<Object?> get props => [states];
}
