import 'package:json_annotation/json_annotation.dart';

enum InvoiceCustomFieldPlacement {
  /// Render the custom field above the invoice line items.
  @JsonValue('ABOVE_LINE_ITEMS')
  aboveLineItems,

  /// Render the custom field below the invoice line items.
  @JsonValue('BELOW_LINE_ITEMS')
  belowLineItems,
}
