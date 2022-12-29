import 'package:json_annotation/json_annotation.dart';

/// Indicates the Square product used to generate an inventory change.
enum Product {
  @JsonValue('SQUARE_POS')
  squarePos,
  @JsonValue('EXTERNAL_API')
  externalApi,
  @JsonValue('BILLING')
  billing,
  @JsonValue('APPOINTMENTS')
  appointments,
  @JsonValue('INVOICES')
  invoices,
  @JsonValue('ONLINE_STORE')
  onlineStore,
  @JsonValue('PAYROLL')
  payroll,
  @JsonValue('DASHBOARD')
  dashboard,
  @JsonValue('ITEM_LIBRARY_IMPORT')
  itemLibraryImport,
  @JsonValue('OTHER')
  other,
}
