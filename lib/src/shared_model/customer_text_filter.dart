import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_text_filter.g.dart';

@JsonSerializable()
class CustomerTextFilter extends Equatable {
  const CustomerTextFilter({
    this.exact,
    this.fuzzy,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomerTextFilter]
  factory CustomerTextFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerTextFilterFromJson(json);

  /// Converts a [CustomerTextFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomerTextFilterToJson(this);

  final String? exact;
  final String? fuzzy;

  @override
  List<Object?> get props => [exact, fuzzy];
}
