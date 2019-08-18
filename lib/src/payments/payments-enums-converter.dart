import 'package:square_connect/square_connect.dart';

const _mapStringtoProcessingFeeType = {
  'INITIAL': ProcessingFeeType.inital,
  'ADJUSTMENT': ProcessingFeeType.adjustment,
};

ProcessingFeeType getProcessingFeeTypeFromString(String input) =>
    _mapStringtoProcessingFeeType[input];
String getStringFromProcessingFeeType(ProcessingFeeType input) =>
    _mapStringtoProcessingFeeType.keys
        .singleWhere((value) => _mapStringtoProcessingFeeType[value] == input);

const _mapStringtoPaymentStatus = {
  'APPROVED': PaymentStatus.approved,
  'COMPLETED': PaymentStatus.completed,
  'CANCELED': PaymentStatus.canceled,
  'FAILED': PaymentStatus.failed,
};

PaymentStatus getPaymentStatusFromString(String input) =>
    _mapStringtoPaymentStatus[input];
String getStringFromPaymentStatus(PaymentStatus input) =>
    _mapStringtoPaymentStatus.keys
        .singleWhere((value) => _mapStringtoPaymentStatus[value] == input);

const _mapStringtoBalancePaymentStatus = {
  'COMPLETED': BalancePaymentStatus.completed,
  'FAILED': BalancePaymentStatus.failed,
};

BalancePaymentStatus getBalancePaymentStatusFromString(String input) =>
    _mapStringtoBalancePaymentStatus[input];
String getStringFromBalancePaymentStatus(BalancePaymentStatus input) =>
    _mapStringtoBalancePaymentStatus.keys.singleWhere(
        (value) => _mapStringtoBalancePaymentStatus[value] == input);
