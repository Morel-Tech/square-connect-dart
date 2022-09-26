import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_location_filter.g.dart';

@JsonSerializable()
class LoyaltyEventLocationFilter extends Equatable {
  const LoyaltyEventLocationFilter({
    required this.locationIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventLocationFilter]
  factory LoyaltyEventLocationFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventLocationFilterFromJson(json);

  /// Converts a [LoyaltyEventLocationFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventLocationFilterToJson(this);

  final List<String> locationIds;

  @override
  List<Object?> get props => [locationIds];
}
