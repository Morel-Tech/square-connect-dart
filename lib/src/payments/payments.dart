import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/customer/customer-enums-converter.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';

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
    CardBrand cardBrand,
  }) async {
    var queryParams = [
      if (beginTime != null) QueryParam('begin_time', beginTime.toString()),
      if (endTime != null) QueryParam('end_time', endTime.toString()),
      if (sortOrder != null) QueryParam('sort_order', getStringFromSortOrder(sortOrder)),
      if (cursor != null) QueryParam('cursor', cursor),
      if (locationId != null) QueryParam('location_id', locationId),
      if (total != null) QueryParam('total', total.toString()),
      if (last4 != null) QueryParam('last_4', last4),
      if (cardBrand != null) QueryParam('card_brand', getStringFromCardBrand(cardBrand)),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/payments',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
      queryParams: queryParams,
    );

    var response = await obj.makeCall();
    return ListPaymentsResponse.fromJson(json.decode(response.body));
  }

  Future<CreatePaymentResponse> createPayment({
    @required Money amountMoney,
    String idempotencyKey,
    @required String sourceId,
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
    var body = Map<String, dynamic>();

    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (idempotencyKey != null) body['idempotency_key'] = idempotencyKey ?? Uuid().v4();
    if (sourceId != null) body['source_id'] = sourceId;
    if (acceptPartialAuthorization != null) body['accept_partial_authorization'] = acceptPartialAuthorization;
    if (appFeeMoney != null) body['app_fee_money'] = appFeeMoney.toJson();
    if (autocomplete != null) body['autocomplete'] = autocomplete;
    if (billingAddress != null) body['billing_address'] = billingAddress.toJson();
    if (buyerEmailAddress != null) body['buyer_email_address'] = buyerEmailAddress;
    if (customerId != null) body['customer_id'] = customerId;
    if (locationid != null) body['location_id'] = locationid;
    if (note != null) body['note'] = note;
    if (orderId != null) body['order_id'] = orderId;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (shippingAddress != null) body['shipping_address'] = shippingAddress.toJson();
    if (tipMoney != null) body['tip_money'] = tipMoney.toJson();
    if (verificationToken != null) body['verification_token'] = verificationToken;

    var obj = RequestObj(
      token: _token,
      path: '/v2/payments',
      method: RequestMethod.post,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
      body: body,
    );

    var response = await obj.makeCall();
    return CreatePaymentResponse.fromJson(json.decode(response.body));
  }

  Future<CancelPaymentByIdempotencyKeyResponse> cancelPaymentByIdempotencyKey({
    @required String idempotencyKey,
  }) async {
    if (idempotencyKey == null) throw ArgumentError('in this method, idempotencyKey must not be null');

    var body = Map<String, dynamic>();

    if (idempotencyKey != null) body['idempotency_key'] = idempotencyKey;

    var obj = RequestObj(
      token: _token,
      path: '/v2/payments/cancel',
      method: RequestMethod.post,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
      body: body,
    );

    var response = await obj.makeCall();
    return CancelPaymentByIdempotencyKeyResponse.fromJson(json.decode(response.body));
  }

  Future<GetPaymentResponse> getPayment({
    @required String paymentId,
  }) async {
  if (paymentId == null) throw ArgumentError('paymentId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/payments/$paymentId',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return GetPaymentResponse.fromJson(json.decode(response.body));
  }

  Future<CancelPaymentResponse> cancelPayment({
    @required String paymentId,
  }) async {
    if (paymentId == null) throw ArgumentError('paymentId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/payments/$paymentId/cancel',
      method: RequestMethod.post,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return CancelPaymentResponse.fromJson(json.decode(response.body));
  }

  Future<CompletePaymentResponse> completePayment({
    @required String paymentId,
  }) async {
    if (paymentId == null) throw ArgumentError('paymentId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/payments/$paymentId/complete',
      method: RequestMethod.post,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return CompletePaymentResponse.fromJson(json.decode(response.body));
  }
}