import 'package:json_annotation/json_annotation.dart';

enum OAuthScope {
  @JsonValue('BANK_ACCOUNTS_READ')
  bankAccountsRead,

  @JsonValue('CUSTOMERS_READ')
  customersRead,

  @JsonValue('CUSTOMERS_WRITE')
  customersWrite,

  @JsonValue('EMPLOYEES_READ')
  employeesRead,

  @JsonValue('EMPLOYEES_WRITE')
  employeesWrite,

  @JsonValue('INVENTORY_READ')
  inventoryRead,

  @JsonValue('INVENTORY_WRITE')
  inventoryWrite,

  @JsonValue('ITEMS_READ')
  itemsRead,

  @JsonValue('ITEMS_WRITE')
  itemsWrite,

  @JsonValue('MERCHANT_PROFILE_READ')
  merchantProfileRead,

  @JsonValue('ORDERS_READ')
  ordersRead,

  @JsonValue('ORDERS_WRITE')
  ordersWrite,

  @JsonValue('PAYMENTS_READ')
  paymentsRead,

  @JsonValue('PAYMENTS_WRITE')
  paymentsWrite,

  @JsonValue('PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS')
  paymentsWriteAdditionalRecipients,

  @JsonValue('PAYMENTS_WRITE_IN_PERSON')
  paymentsWriteInPerson,

  @JsonValue('SETTLEMENTS_READ')
  settlementsRead,

  @JsonValue('TIMECARDS_READ')
  timecardsRead,

  @JsonValue('TIMECARDS_WRITE')
  timecardsWrite,

  @JsonValue('TIMECARDS_SETTINGS_READ')
  timecardsSettingsRead,

  @JsonValue('TIMECARDS_SETTINGS_WRITE')
  timecardsSettingsWrite,
}
