import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'quick_pay.g.dart';

@JsonSerializable()
class QuickPay extends Equatable {
  const QuickPay({
    required this.locationId,
    required this.name,
    required this.priceMoney,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [QuickPay]
  factory QuickPay.fromJson(Map<String, dynamic> json) =>
      _$QuickPayFromJson(json);

  /// Converts a [QuickPay] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$QuickPayToJson(this);

  final String locationId;
  final String name;
  final Money priceMoney;

  @override
  List<Object?> get props => [locationId, name, priceMoney];
}
