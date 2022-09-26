import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_order_filter.g.dart';

@JsonSerializable()
class LoyaltyEventOrderFilter extends Equatable {
  const LoyaltyEventOrderFilter({
    required this.orderId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventOrderFilter]
  factory LoyaltyEventOrderFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventOrderFilterFromJson(json);

  /// Converts a [LoyaltyEventOrderFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventOrderFilterToJson(this);

  final String orderId;

  @override
  List<Object?> get props => [orderId];
}
