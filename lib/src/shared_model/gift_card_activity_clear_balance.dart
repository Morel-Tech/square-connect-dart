import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_card_activity_clear_balance.g.dart';

@JsonSerializable()
class GiftCardActivityClearBalance extends Equatable {
  const GiftCardActivityClearBalance({
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityClearBalance]
  factory GiftCardActivityClearBalance.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityClearBalanceFromJson(json);

  /// Converts a [GiftCardActivityClearBalance] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityClearBalanceToJson(this);

  /// The reason the gift card balance was cleared.
  final String reason;

  @override
  List<Object?> get props => [reason];
}
