import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_pricing_options.g.dart';

@JsonSerializable()
class OrderPricingOptions extends Equatable {
  const OrderPricingOptions({
    required this.autoApplyDiscounts,
    required this.autoApplyTaxes,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [OrderPricingOptions]
  factory OrderPricingOptions.fromJson(Map<String, dynamic> json) =>
      _$OrderPricingOptionsFromJson(json);

  /// Converts a [OrderPricingOptions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$OrderPricingOptionsToJson(this);

  /// The option to determine whether pricing rule-based discounts are
  /// automatically applied to an order.
  final bool? autoApplyDiscounts;

  /// The option to determine whether rule-based taxes are automatically
  /// applied to an order when the criteria of the corresponding rules are met.
  final bool? autoApplyTaxes;

  @override
  List<Object?> get props => [autoApplyDiscounts, autoApplyTaxes];
}
