import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_card_activity_block.g.dart';

@JsonSerializable()
class GiftCardActivityBlock extends Equatable {
  const GiftCardActivityBlock({
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityBlock]
  factory GiftCardActivityBlock.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityBlockFromJson(json);

  /// Converts a [GiftCardActivityBlock] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityBlockToJson(this);

  /// The reason the gift card was blocked.
  final String reason;

  @override
  List<Object?> get props => [reason];
}
