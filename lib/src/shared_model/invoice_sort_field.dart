import 'package:json_annotation/json_annotation.dart';

enum InvoiceSortField {
  /// The field works as follows:
  ///
  /// - If the invoice is a draft, it uses the invoice `created_at` date.
  /// - If the invoice is scheduled for publication, it uses the `scheduled_at`
  /// date.
  /// - If the invoice is published, it uses the invoice publication date.
  @JsonValue('INVOICE_SORT_DATE')
  invoiceSortDate,
}
