import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_loyalty_account_filter.g.dart';

@JsonSerializable()
class LoyaltyEventLoyaltyAccountFilter extends Equatable {
  const LoyaltyEventLoyaltyAccountFilter({
    required this.loyaltyAccountId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyEventLoyaltyAccountFilter]
  factory LoyaltyEventLoyaltyAccountFilter.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyEventLoyaltyAccountFilterFromJson(json);

  /// Converts a [LoyaltyEventLoyaltyAccountFilter] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyEventLoyaltyAccountFilterToJson(this);

  final String loyaltyAccountId;

  @override
  List<Object?> get props => [loyaltyAccountId];
}
