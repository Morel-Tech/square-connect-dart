import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'payment_link.g.dart';

@JsonSerializable()
class PaymentLink extends Equatable {
  const PaymentLink({
    required this.id,
    this.version,
    this.checkoutOptions,
    this.createdAt,
    this.description,
    this.orderId,
    this.paymentNote,
    this.prePopulatedData,
    this.updatedAt,
    this.url,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [PaymentLink]
  factory PaymentLink.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkFromJson(json);

  /// Converts a [PaymentLink] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$PaymentLinkToJson(this);

  final String id;
  final int? version;
  final CheckoutOptions? checkoutOptions;
  final DateTime? createdAt;
  final String? description;
  final String? orderId;
  final String? paymentNote;
  final PrePopulatedData? prePopulatedData;
  final DateTime? updatedAt;
  final String? url;

  @override
  List<Object?> get props => [
        id,
        version,
        checkoutOptions,
        createdAt,
        description,
        orderId,
        paymentNote,
        prePopulatedData,
        updatedAt,
        url,
      ];
}
