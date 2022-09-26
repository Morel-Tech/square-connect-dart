import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_event_filter.g.dart';

@JsonSerializable()
class LoyaltyEventFilter extends Equatable {
  const LoyaltyEventFilter({
    this.dateTimeFilter,
    this.locationFilter,
    this.loyaltyAccountFilter,
    this.orderFilter,
    this.typeFilter,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventFilter]
  factory LoyaltyEventFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventFilterFromJson(json);

  /// Converts a [LoyaltyEventFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventFilterToJson(this);

  final LoyaltyEventDateTimeFilter? dateTimeFilter;
  final LoyaltyEventLocationFilter? locationFilter;
  final LoyaltyEventLoyaltyAccountFilter? loyaltyAccountFilter;
  final LoyaltyEventOrderFilter? orderFilter;
  final LoyaltyEventTypeFilter? typeFilter;

  @override
  List<Object?> get props => [
        dateTimeFilter,
        locationFilter,
        loyaltyAccountFilter,
        orderFilter,
        typeFilter,
      ];
}
