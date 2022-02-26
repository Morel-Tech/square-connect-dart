import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'customer_query.g.dart';

@JsonSerializable()
class CustomerQuery extends Equatable {
  const CustomerQuery({
    this.filter,
    this.sort,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomerQuery]
  factory CustomerQuery.fromJson(Map<String, dynamic> json) =>
      _$CustomerQueryFromJson(json);

  /// Converts a [CustomerQuery] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomerQueryToJson(this);

  final CustomerFilter? filter;
  final CustomerSort? sort;

  @override
  List<Object?> get props => [
        filter,
        sort,
      ];
}
