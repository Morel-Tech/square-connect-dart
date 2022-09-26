import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_type_filter.g.dart';

@JsonSerializable()
class LoyaltyEventTypeFilter extends Equatable {
  const LoyaltyEventTypeFilter({
    required this.types,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventTypeFilter]
  factory LoyaltyEventTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventTypeFilterFromJson(json);

  /// Converts a [LoyaltyEventTypeFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventTypeFilterToJson(this);

  final List<String> types;

  @override
  List<Object?> get props => [types];
}
