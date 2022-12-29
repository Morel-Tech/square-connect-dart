import 'package:json_annotation/json_annotation.dart';

/// Indicates a phase in the process of calculating order totals. Service
/// charges will be applied after the phase indicated.
enum OrderServiceChargeCalculationPhase {
  /// The service charge will be applied after discounts but before taxes.
  @JsonValue('SUBTOTAL_PHASE')
  subtotalPhase,

  /// The service charge will be applied after both discounts and taxes are
  ///  applied.
  @JsonValue('TOTAL_PHASE')
  totalPhase,
}
