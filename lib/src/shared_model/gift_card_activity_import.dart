import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card_activity_import.g.dart';

@JsonSerializable()
class GiftCardActivityImport extends Equatable {
  const GiftCardActivityImport({
    required this.amountMoney,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCardActivityImport]
  factory GiftCardActivityImport.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityImportFromJson(json);

  /// Converts a [GiftCardActivityImport] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardActivityImportToJson(this);

  /// The balance amount on the imported gift card.
  final Money amountMoney;

  @override
  List<Object?> get props => [amountMoney];
}
