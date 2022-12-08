import 'package:json_annotation/json_annotation.dart';

/// Indicates when to calculate the taxes due on a cart.
enum TaxCalculationPhase {
  /// The tax is calculated based on the payment's subtotal.
  /// (ie before discounts)
  @JsonValue('TAX_SUBTOTAL_PHASE')
  taxSubtotalPhase,

  /// The tax is calculated based on the payment's total.
  @JsonValue('TAX_TOTAL_PHASE')
  taxTotalPhase,
}
