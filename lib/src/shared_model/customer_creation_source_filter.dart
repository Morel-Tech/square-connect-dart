import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'customer_creation_source_filter.g.dart';

@JsonSerializable()
class CustomerCreationSourceFilter extends Equatable {
  const CustomerCreationSourceFilter({
    required this.rule,
    required this.values,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomerCreationSourceFilter]
  factory CustomerCreationSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreationSourceFilterFromJson(json);

  /// Converts a [CustomerCreationSourceFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomerCreationSourceFilterToJson(this);

  final CustomerInclusionExclusion rule;

  final List<CustomerCreationSource> values;

  @override
  List<Object?> get props => [rule, values];
}
