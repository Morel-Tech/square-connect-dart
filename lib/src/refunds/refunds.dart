import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

/// An object containing all methods for the Refunds API. Retrieve this object with `SquareConnect.instance.refundsApi`.
class RefundsApi {
  final String _token;
  final Client _client;
  final String _refreshToken;
  final String _clientId;
  final String _clientSecret;

  RefundsApi(this._token, this._client, this._refreshToken, this._clientId,
      this._clientSecret);

  Future<ListPaymentRefundsResponse> listPaymentRefunds({
    DateTime beginTime,
    DateTime endTime,
    SortOrder sortOrder,
    String cursor,
    String locationId,
    PaymentRefundStatus status,
    String sourceType,
  }) async {

  }

  Future<RefundPaymentResponse> refundPayment({
    @required Money amountMoney,
    String idempotencyKey,
    Money appFeeMoney,
    String paymentId,
    String reason,
  }) async {

  }

  Future<GetPaymentRefundResponse> getPaymentRefund({
    @required String refundId,
  }) async {

  }

}