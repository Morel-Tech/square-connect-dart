import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_line_item_modifier.g.dart';

@JsonSerializable()
class OrderLineItemModifier extends Equatable {
  const OrderLineItemModifier({
    this.uid,
    this.catalogObjectId,
    this.name,
    this.basePriceMoney,
    this.totalPriceMoney,
    this.catalogVersion,
    this.metadata,
    this.quantity,
  });

  /// Converts a [Map] to an [OrderLineItemModifier]
  factory OrderLineItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemModifierFromJson(json);

  /// Converts a [OrderLineItemModifier] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemModifierToJson(this);

  final String? uid;
  final String? catalogObjectId;
  final int? catalogVersion;
  final String? name;
  final Money? basePriceMoney;
  final Money? totalPriceMoney;
  final String? quantity;
  final Map<String, String>? metadata;

  @override
  List<Object?> get props {
    return [
      uid,
      catalogObjectId,
      name,
      basePriceMoney,
      totalPriceMoney,
      quantity,
      metadata,
      catalogVersion,
    ];
  }
}
