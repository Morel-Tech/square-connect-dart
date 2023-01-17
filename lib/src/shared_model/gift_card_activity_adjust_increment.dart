import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_adjust_increment.g.dart';

@JsonSerializable()
class GiftCardActivityAdjustIncrement extends Equatable {
  const GiftCardActivityAdjustIncrement({
    required this.amountMoney,
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [GiftCardActivityAdjustIncrement]
  factory GiftCardActivityAdjustIncrement.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityAdjustIncrementFromJson(json);

  /// Converts a [GiftCardActivityAdjustIncrement] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityAdjustIncrementToJson(this);

  /// The amount added to the gift card balance. This value is a positive
  /// integer.
  final Money amountMoney;

  /// The reason the gift card balance was adjusted.
  final String reason;

  @override
  List<Object?> get props => [amountMoney, reason];
}
