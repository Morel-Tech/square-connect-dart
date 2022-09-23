import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_other.g.dart';

@JsonSerializable()
class LoyaltyEventOther extends Equatable {
  const LoyaltyEventOther({
    required this.loyaltyProgramId,
    required this.points,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventOther]
  factory LoyaltyEventOther.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventOtherFromJson(json);

  /// Converts a [LoyaltyEventOther] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventOtherToJson(this);

  final String loyaltyProgramId;
  final int points;

  @override
  List<Object?> get props => [loyaltyProgramId, points];
}
