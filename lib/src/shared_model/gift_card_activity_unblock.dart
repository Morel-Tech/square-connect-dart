import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_card_activity_unblock.g.dart';

@JsonSerializable()
class GiftCardActivityUnblock extends Equatable {
  const GiftCardActivityUnblock({
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityUnblock]
  factory GiftCardActivityUnblock.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityUnblockFromJson(json);

  /// Converts a [GiftCardActivityUnblock] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityUnblockToJson(this);

  /// The reason the gift card was unblocked.
  final String reason;

  @override
  List<Object?> get props => [reason];
}
