import 'package:json_annotation/json_annotation.dart';

/// The state of the fulfillment.
enum OrderFulfillmentState {
  @JsonValue('PROPOSED')
  proposed,
  @JsonValue('RESERVED')
  reserved,
  @JsonValue('PREPARED')
  prepared,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELED')
  canceled,
  @JsonValue('FAILED')
  failed,
}
