import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_event_date_time_filter.g.dart';

@JsonSerializable()
class LoyaltyEventDateTimeFilter extends Equatable {
  const LoyaltyEventDateTimeFilter({
    required this.createdAt,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventDateTimeFilter]
  factory LoyaltyEventDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventDateTimeFilterFromJson(json);

  /// Converts a [LoyaltyEventDateTimeFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventDateTimeFilterToJson(this);

  final TimeRange createdAt;

  @override
  List<Object?> get props => [createdAt];
}
