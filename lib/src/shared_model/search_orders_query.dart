import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders_query.g.dart';

@JsonSerializable()
class SearchOrdersQuery extends Equatable {
  const SearchOrdersQuery({
    this.filter,
    this.sort,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersQuery]
  factory SearchOrdersQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersQueryFromJson(json);

  /// Converts a [SearchOrdersQuery] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersQueryToJson(this);

  /// Criteria to filter results by.
  final SearchOrdersFilter? filter;

  /// Criteria to sort results by.
  final SearchOrdersSort? sort;

  @override
  List<Object?> get props => [filter, sort];
}
