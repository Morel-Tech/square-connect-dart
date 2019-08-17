import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

/// An object containing all methods for the Payments API. Retrieve this object with `SquareConnect.instance.paymentsApi`.
class PaymentsApi {
  final String _token;
  final Client _client;
  final String _refreshToken;
  final String _clientId;
  final String _clientSecret;

  PaymentsApi(this._token, this._client, this._refreshToken, this._clientId,
      this._clientSecret);

  Future<ListPaymentsResponse> listPayments({
    DateTime beginTime,
    DateTime endTime,
    SortOrder sortOrder,
    String cursor,
    String locationId,
    int total,
    String last4,
    CardBrand brand,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/payments',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return ListPaymentsResponse.fromJson(json.decode(response.body));
  }

  Future<CreatePaymentResponse> createPayment({
    @required Money amountMoney,
    String idempotencyKey,
    @required String source,
    bool acceptPartialAuthorization,
    Money appFeeMoney,
    bool autocomplete,
    Address billingAddress,
    String buyerEmailAddress,
    String customerId,
    String locationid,
    String note,
    String orderId,
    String referenceId,
    Address shippingAddress,
    Money tipMoney,
    String verificationToken,
  }) async {

  }

  Future<CancelPaymentByIdempotencyKeyResponse> cancelPaymentByIdempotencyKey({
    @required String idempotencyKey,
  }) async {

  }

  Future<GetPaymentResponse> getPayment({
    @required String paymentId,
  }) async {

  }

  Future<CancelPaymentResponse> cancelPayment({
    @required String paymentId,
  }) async {

  }

  Future<CompletePaymentResponse> completePayment({
    @required String paymentId,
  }) async {

  }
}