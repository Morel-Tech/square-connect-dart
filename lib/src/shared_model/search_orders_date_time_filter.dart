import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders_date_time_filter.g.dart';

@JsonSerializable()
class SearchOrdersDateTimeFilter extends Equatable {
  const SearchOrdersDateTimeFilter({
    this.closedAt,
    this.createdAt,
    this.updatedAt,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchOrdersDateTimeFilter]
  factory SearchOrdersDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersDateTimeFilterFromJson(json);

  /// Converts a [SearchOrdersDateTimeFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchOrdersDateTimeFilterToJson(this);

  /// The time range for filtering on the `closed_at` timestamp. If you use
  /// this value, you must set the `sort_field` in the `OrdersSearchSort`
  /// object to `CLOSED_AT`.
  final TimeRange? closedAt;

  /// The time range for filtering on the `created_at` timestamp. If you use
  /// this value, you must set the `sort_field` in the `OrdersSearchSort`
  /// object to `CREATED_AT`.
  final TimeRange? createdAt;

  /// The time range for filtering on the `updated_at` timestamp. If you use
  /// this value, you must set the `sort_field` in the `OrdersSearchSort`
  /// object to `UPDATED_AT`.
  final TimeRange? updatedAt;

  @override
  List<Object?> get props => [closedAt, createdAt, updatedAt];
}
