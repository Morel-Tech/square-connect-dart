// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_related_resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentLinkRelatedResources _$PaymentLinkRelatedResourcesFromJson(
        Map<String, dynamic> json) =>
    PaymentLinkRelatedResources(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionPlans: (json['subscription_plans'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentLinkRelatedResourcesToJson(
        PaymentLinkRelatedResources instance) =>
    <String, dynamic>{
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'subscription_plans':
          instance.subscriptionPlans.map((e) => e.toJson()).toList(),
    };
