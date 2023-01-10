import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_orders_source_filter.g.dart';

@JsonSerializable()
class SearchOrdersSourceFilter extends Equatable {
  const SearchOrdersSourceFilter({
    this.sourceNames,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersSourceFilter]
  factory SearchOrdersSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersSourceFilterFromJson(json);

  /// Converts a [SearchOrdersSourceFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersSourceFilterToJson(this);

  /// Filters by the Source `name`. The filter returns any orders with a
  /// `source.name` that matches any of the listed source names.
  ///
  /// Max: 10 source names.
  final List<String>? sourceNames;

  @override
  List<Object?> get props => [sourceNames];
}
