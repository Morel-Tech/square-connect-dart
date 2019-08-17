import 'package:square_connect/square_connect.dart';

const _mapStringtoPaymentRefundStatus = {
  'PENDING': PaymentRefundStatus.pending,
  'APPROVED': PaymentRefundStatus.approved,
  'REJECTED': PaymentRefundStatus.rejected,
  'FAILED': PaymentRefundStatus.failed,
};

PaymentRefundStatus getPaymentRefundStatusFromString(String input) =>
    _mapStringtoPaymentRefundStatus[input];
String getStringFromPaymentRefundStatus(PaymentRefundStatus input) =>
    _mapStringtoPaymentRefundStatus.keys
        .singleWhere((value) => _mapStringtoPaymentRefundStatus[value] == input);