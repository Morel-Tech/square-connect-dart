import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'payment_link_related_resources.g.dart';

@JsonSerializable()
class PaymentLinkRelatedResources extends Equatable {
  const PaymentLinkRelatedResources({
    required this.orders,
    required this.subscriptionPlans,
  });

  /// Converts a [Map] to an [PaymentLinkRelatedResources]
  factory PaymentLinkRelatedResources.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkRelatedResourcesFromJson(json);

  /// Converts a [PaymentLinkRelatedResources] to a [Map]
  Map<String, dynamic> toJson() => _$PaymentLinkRelatedResourcesToJson(this);

  final List<Order> orders;
  final List<CatalogObject> subscriptionPlans;

  @override
  List<Object?> get props {
    return [
      orders,
      subscriptionPlans,
    ];
  }
}
