import 'package:json_annotation/json_annotation.dart';

enum ChangeTiming {
  /// The action occurs immediately.
  @JsonValue('IMMEDIATE')
  immediate,

  /// The action occurs at the end of the billing cycle.
  @JsonValue('END_OF_BILLING_CYCLE')
  endOfBillingCycle,
}
