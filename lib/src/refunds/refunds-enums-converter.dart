import 'package:square_connect/square_connect.dart';

const _mapStringtoRefundStatus = {
  'PENDING': RefundStatus.pending,
  'APPROVED': RefundStatus.approved,
  'REJECTED': RefundStatus.rejected,
  'FAILED': RefundStatus.failed,
};

RefundStatus getRefundStatusFromString(String input) =>
    _mapStringtoRefundStatus[input];
String getStringFromRefundStatus(RefundStatus input) =>
    _mapStringtoRefundStatus.keys
        .singleWhere((value) => _mapStringtoRefundStatus[value] == input);