import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_adjust_decrement.g.dart';

@JsonSerializable()
class GiftCardActivityAdjustDecrement extends Equatable {
  const GiftCardActivityAdjustDecrement({
    required this.money,
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [GiftCardActivityAdjustDecrement]
  factory GiftCardActivityAdjustDecrement.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityAdjustDecrementFromJson(json);

  /// Converts a [GiftCardActivityAdjustDecrement] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$GiftCardActivityAdjustDecrementToJson(this);

  /// The amount deducted from the gift card balance. This value is a
  /// positive integer.
  final Money money;

  /// The reason the gift card balance was adjusted.
  final String reason;

  @override
  List<Object?> get props => [money, reason];
}
