import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/refunds/refunds-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';

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
    var queryParams = [
      if (beginTime != null) QueryParam('begin_time', beginTime.toString()),
      if (endTime != null) QueryParam('end_time', endTime.toString()),
      if (sortOrder != null) QueryParam('sort_order', getStringFromSortOrder(sortOrder)),
      if (cursor != null) QueryParam('cursor', cursor),
      if (locationId != null) QueryParam('location_id', locationId),
      if (status != null) QueryParam('status', getStringFromPaymentRefundStatus(status)),
      if (sourceType != null) QueryParam('source_type', sourceType),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/refunds',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
      queryParams: queryParams,
    );

    var response = await obj.makeCall();
    return ListPaymentRefundsResponse.fromJson(json.decode(response.body));
  }

  Future<RefundPaymentResponse> refundPayment({
    @required Money amountMoney,
    String idempotencyKey,
    Money appFeeMoney,
    String paymentId,
    String reason,
  }) async {
    if (amountMoney == null) throw ArgumentError('amountMoney must not be null');

    var body = Map<String, dynamic>();

    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (idempotencyKey != null) body['idempotency_key'] = idempotencyKey ?? Uuid().v4();
    if (appFeeMoney != null) body['app_fee_money'] = appFeeMoney.toJson();
    if (paymentId != null) body['payment_id'] = paymentId;
    if (reason != null) body['reason'] = reason;

    var obj = RequestObj(
      token: _token,
      path: '/v2/refunds',
      method: RequestMethod.post,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
      body: body,
    );

    var response = await obj.makeCall();
    return RefundPaymentResponse.fromJson(json.decode(response.body));
  }

  Future<GetPaymentRefundResponse> getPaymentRefund({
    @required String refundId,
  }) async {
    if (refundId == null) throw ArgumentError('refundId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/refunds/$refundId',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return GetPaymentRefundResponse.fromJson(json.decode(response.body));
  }

}