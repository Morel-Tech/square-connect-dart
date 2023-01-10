import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders_sort.g.dart';

@JsonSerializable()
class SearchOrdersSort extends Equatable {
  const SearchOrdersSort({
    required this.sortField,
    this.sortOrder,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersSort]
  factory SearchOrdersSort.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersSortFromJson(json);

  /// Converts a [SearchOrdersSort] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersSortToJson(this);

  /// The field to sort by.
  final SearchOrdersSortField sortField;

  /// The field to sort by.
  final SortOrder? sortOrder;

  @override
  List<Object?> get props => [sortField, sortOrder];
}
