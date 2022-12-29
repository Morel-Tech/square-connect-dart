import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_return_line_item_modifier.g.dart';

@JsonSerializable()
class OrderReturnLineItemModifier extends Equatable {
  const OrderReturnLineItemModifier({
    this.id,
    this.sourceModifierId,
    this.catalogObjectId,
    this.name,
    this.basePriceMoney,
    this.totalPriceMoney,
  });

  /// Converts a [Map] to an [OrderReturnLineItemModifier]
  factory OrderReturnLineItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemModifierFromJson(json);

  /// Converts a [OrderReturnLineItemModifier] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnLineItemModifierToJson(this);

  final String? id;
  final String? sourceModifierId;
  final String? catalogObjectId;
  final String? name;
  final Money? basePriceMoney;
  final Money? totalPriceMoney;

  @override
  List<Object?> get props => [
        id,
        sourceModifierId,
        catalogObjectId,
        name,
        basePriceMoney,
        totalPriceMoney,
      ];
}
