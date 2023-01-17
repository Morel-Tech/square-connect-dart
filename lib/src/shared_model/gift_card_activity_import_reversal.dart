import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_import_reversal.g.dart';

@JsonSerializable()
class GiftCardActivityImportReversal extends Equatable {
  const GiftCardActivityImportReversal({
    required this.amountMoney,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [GiftCardActivityImportReversal]
  factory GiftCardActivityImportReversal.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityImportReversalFromJson(json);

  /// Converts a [GiftCardActivityImportReversal] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityImportReversalToJson(this);

  /// The amount of money cleared from the third-party gift card when the
  /// import was reversed.
  final Money amountMoney;

  @override
  List<Object?> get props => [amountMoney];
}
