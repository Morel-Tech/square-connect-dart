import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_pricing_rule.g.dart';

@JsonSerializable()
class CatalogPricingRule extends Equatable {
  const CatalogPricingRule({
    this.customerGroupIdsAny,
    this.discountId,
    this.excludeProductsId,
    this.excludeStrategy,
    this.matchProductsId,
    this.minimumOrderSubtotalMoney,
    this.name,
    this.timePeriodIds,
    this.validFromDate,
    this.validFromLocalTime,
    this.validUntilDate,
    this.validUntilLocalTime,
    this.discountTargetScope,
  });

  /// Converts a [Map] to an [CatalogPricingRule]
  factory CatalogPricingRule.fromJson(Map<String, dynamic> json) =>
      _$CatalogPricingRuleFromJson(json);

  /// Converts a [CatalogPricingRule] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogPricingRuleToJson(this);

  final List<String>? customerGroupIdsAny;
  final String? discountId;
  final String? excludeProductsId;
  final String? excludeStrategy;
  final String? matchProductsId;
  final Money? minimumOrderSubtotalMoney;
  final String? name;
  final List<String>? timePeriodIds;
  final String? validFromDate;
  final String? validFromLocalTime;
  final String? validUntilDate;
  final String? validUntilLocalTime;
  final DiscountTargetScopeType? discountTargetScope;

  @override
  List<Object?> get props => [
        customerGroupIdsAny,
        discountId,
        excludeProductsId,
        excludeStrategy,
        matchProductsId,
        minimumOrderSubtotalMoney,
        name,
        timePeriodIds,
        validFromDate,
        validFromLocalTime,
        validUntilDate,
        validUntilLocalTime,
        discountTargetScope,
      ];
}
