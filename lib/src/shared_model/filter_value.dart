import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'filter_value.g.dart';

@JsonSerializable()
class FilterValue extends Equatable {
  const FilterValue({
    required this.all,
    required this.any,
    required this.none,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [FilterValue]
  factory FilterValue.fromJson(Map<String, dynamic> json) =>
      _$FilterValueFromJson(json);

  /// Converts a [FilterValue] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$FilterValueToJson(this);

  final List<String>? all;
  final List<String>? any;
  final List<String>? none;

  @override
  List<Object?> get props => [
        all,
        any,
        none,
      ];
}
