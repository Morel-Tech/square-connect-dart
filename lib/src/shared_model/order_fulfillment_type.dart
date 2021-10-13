import 'package:json_annotation/json_annotation.dart';

/// The type of fulfillment.
enum OrderFulfillmentType {
  @JsonValue('PICKUP')
  pickup,
  @JsonValue('SHIPMENT')
  shipment,
}
