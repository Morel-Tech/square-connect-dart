import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_account_expiring_point_deadline.g.dart';

@JsonSerializable()
class LoyaltyAccountExpiringPointDeadline extends Equatable {
  const LoyaltyAccountExpiringPointDeadline({
    required this.expiresAt,
    required this.points,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyAccountExpiringPointDeadline]
  factory LoyaltyAccountExpiringPointDeadline.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyAccountExpiringPointDeadlineFromJson(json);

  /// Converts a [LoyaltyAccountExpiringPointDeadline] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyAccountExpiringPointDeadlineToJson(this);

  final DateTime expiresAt;
  final int points;

  @override
  List<Object?> get props => [expiresAt, points];
}
