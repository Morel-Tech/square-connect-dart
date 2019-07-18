import 'package:square_connect/square_connect.dart';

const _mapStringtoTransactionProduct = {
  'REGISTER': TransactionProduct.register,
  'EXTERNAL_API': TransactionProduct.externalApi,
  'BILLING': TransactionProduct.billing,
  'APPOINTMENTS': TransactionProduct.appointments,
  'INVOICES': TransactionProduct.invoices,
  'ONLINE_STORE': TransactionProduct.onlineStore,
  'PAYROLL': TransactionProduct.payroll,
  'OTHER': TransactionProduct.other,
};

TransactionProduct getTransactionProductFromString(String input) =>
    _mapStringtoTransactionProduct[input];
String getStringFromTransactionProduct(TransactionProduct input) =>
    _mapStringtoTransactionProduct.keys.singleWhere(
        (value) => _mapStringtoTransactionProduct[value] == input);