import 'package:json_annotation/json_annotation.dart';

/// The schedule type of the pickup fulfillment.
enum OrderFulfillmentPickupDetailsScheduleType {
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('ASAP')
  asap,
}
