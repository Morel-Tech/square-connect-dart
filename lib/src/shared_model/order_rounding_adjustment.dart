import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_rounding_adjustment.g.dart';

@JsonSerializable()
class OrderRoundingAdjustment extends Equatable {
  const OrderRoundingAdjustment({
    this.uid,
    this.name,
    this.amountMoney,
  });

  /// Converts a [Map] to an [OrderRoundingAdjustment]
  factory OrderRoundingAdjustment.fromJson(Map<String, dynamic> json) =>
      _$OrderRoundingAdjustmentFromJson(json);

  /// Converts a [OrderRoundingAdjustment] to a [Map]
  Map<String, dynamic> toJson() => _$OrderRoundingAdjustmentToJson(this);

  final String? uid;
  final String? name;
  final Money? amountMoney;

  @override
  List<Object?> get props => [uid, name, amountMoney];
}
