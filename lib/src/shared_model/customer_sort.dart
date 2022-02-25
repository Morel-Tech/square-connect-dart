import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'customer_sort.g.dart';

@JsonSerializable()
class CustomerSort extends Equatable {
  const CustomerSort({
    this.field,
    this.order,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomerSort]
  factory CustomerSort.fromJson(Map<String, dynamic> json) =>
      _$CustomerSortFromJson(json);

  /// Converts a [CustomerSort] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomerSortToJson(this);

  final CustomerSortField? field;

  final SortOrder? order;

  @override
  List<Object?> get props => [
        field,
        order,
      ];
}
