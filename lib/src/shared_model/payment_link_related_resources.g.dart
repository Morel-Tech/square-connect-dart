// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_related_resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentLinkRelatedResources _$PaymentLinkRelatedResourcesFromJson(
        Map<String, dynamic> json) =>
    PaymentLinkRelatedResources(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionPlans: (json['subscription_plans'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentLinkRelatedResourcesToJson(
    PaymentLinkRelatedResources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orders', instance.orders?.map((e) => e.toJson()).toList());
  writeNotNull('subscription_plans',
      instance.subscriptionPlans?.map((e) => e.toJson()).toList());
  return val;
}
