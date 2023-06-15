// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_pricing_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPricingOptions _$OrderPricingOptionsFromJson(Map<String, dynamic> json) =>
    OrderPricingOptions(
      autoApplyDiscounts: json['auto_apply_discounts'] as bool?,
      autoApplyTaxes: json['auto_apply_taxes'] as bool?,
    );

Map<String, dynamic> _$OrderPricingOptionsToJson(OrderPricingOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auto_apply_discounts', instance.autoApplyDiscounts);
  writeNotNull('auto_apply_taxes', instance.autoApplyTaxes);
  return val;
}
