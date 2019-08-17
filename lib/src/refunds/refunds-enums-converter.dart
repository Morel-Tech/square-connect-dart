import 'package:square_connect/square_connect.dart';

const _mapStringtoRefundStatus = {
  'PENDING': PaymentRefundStatus.pending,
  'APPROVED': PaymentRefundStatus.approved,
  'REJECTED': PaymentRefundStatus.rejected,
  'FAILED': PaymentRefundStatus.failed,
};

PaymentRefundStatus getRefundStatusFromString(String input) =>
    _mapStringtoRefundStatus[input];
String getStringFromRefundStatus(PaymentRefundStatus input) =>
    _mapStringtoRefundStatus.keys
        .singleWhere((value) => _mapStringtoRefundStatus[value] == input);