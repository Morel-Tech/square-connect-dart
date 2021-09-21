import 'package:json_annotation/json_annotation.dart';

/// Indicates the Square product used to process a transaction.
enum TransactionProduct {
  @JsonValue('REGISTER')
  register,

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

  @JsonValue('OTHER')
  other,
}
