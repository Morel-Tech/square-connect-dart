import 'package:square_connect/square_connect.dart';

const _mapStringtoOAuthPermission = {
  'BANK_ACCOUNTS_READ': OAuthPermission.bankAccountsRead,
  'CUSTOMERS_READ': OAuthPermission.customersRead,
  'CUSTOMERS_WRITE': OAuthPermission.customersWrite,
  'EMPLOYEES_READ': OAuthPermission.employeesRead,
  'EMPLOYEES_WRITE': OAuthPermission.employeesWrite,
  'INVENTORY_READ': OAuthPermission.inventoryRead,
  'INVENTORY_WRITE': OAuthPermission.inventoryWrite,
  'ITEMS_READ': OAuthPermission.itemsRead,
  'ITEMS_WRITE': OAuthPermission.itemsWrite,
  'MERCHANT_PROFILE_READ': OAuthPermission.merchantProfileRead,
  'ORDERS_READ': OAuthPermission.ordersRead,
  'ORDERS_WRITE': OAuthPermission.ordersWrite,
  'PAYMENTS_READ': OAuthPermission.paymentsRead,
  'PAYMENTS_WRITE': OAuthPermission.paymentsWrite,
  'PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS': OAuthPermission.paymentsWriteAdditionalRecipients,
  'PAYMENTS_WRITE_IN_PERSON': OAuthPermission.paymentsWriteInPerson,
  'SETTLEMENTS_READ': OAuthPermission.settlementsRead,
  'TIMECARDS_READ': OAuthPermission.timecardsRead,
  'TIMECARDS_WRITE': OAuthPermission.timecardsWrite,
  'TIMECARDS_SETTINGS_READ': OAuthPermission.timecardsSettingsRead,
  'TIMECARDS_SETTINGS_WRITE': OAuthPermission.timecardsSettingsWrite,
};

OAuthPermission getOAuthPermissionFromString(String input) =>
    _mapStringtoOAuthPermission[input];
String getStringFromOAuthPermission(OAuthPermission input) =>
    _mapStringtoOAuthPermission.keys
        .singleWhere((value) => _mapStringtoOAuthPermission[value] == input);