import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_fulfillment_recipient.g.dart';

@JsonSerializable()
class OrderFulfillmentRecipient extends Equatable {
  const OrderFulfillmentRecipient({
    this.customerId,
    this.displayName,
    this.emailAddress,
    this.phoneNumber,
    this.address,
  });

  /// Converts a [Map] to an [OrderFulfillmentRecipient]
  factory OrderFulfillmentRecipient.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentRecipientFromJson(json);

  /// Converts a [OrderFulfillmentRecipient] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentRecipientToJson(this);

  final String? customerId;
  final String? displayName;
  final String? emailAddress;
  final String? phoneNumber;
  final Address? address;

  @override
  List<Object?> get props {
    return [
      customerId,
      displayName,
      emailAddress,
      phoneNumber,
      address,
    ];
  }
}
