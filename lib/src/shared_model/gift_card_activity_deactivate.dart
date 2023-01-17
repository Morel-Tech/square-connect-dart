import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_card_activity_deactivate.g.dart';

@JsonSerializable()
class GiftCardActivityDeactivate extends Equatable {
  const GiftCardActivityDeactivate({
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityDeactivate]
  factory GiftCardActivityDeactivate.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityDeactivateFromJson(json);

  /// Converts a [GiftCardActivityDeactivate] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityDeactivateToJson(this);

  /// The reason the gift card was deactivated.
  final String reason;

  @override
  List<Object?> get props => [reason];
}
