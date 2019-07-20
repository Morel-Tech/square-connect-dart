import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';

/// An object containing all methods for the Transactions API. Retrieve this object with `SquareConnect.instance.transactionsApi`.
class TransactionsApi {
  final String _token;
  final Client _client;

  TransactionsApi(this._token, this._client);

  /// Captures a [Transaction] that was created with the `charge()` method with a `delayCapture` value of `true`.
  Future<CaptureTransactionResponse> captureTransaction({
    String locationId,
    String transactionId,
  }) async {
    if (transactionId == null)
      throw ArgumentError('transactionId must not be null');
    if (locationId == null) throw ArgumentError('locationId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/transactions/$transactionId/capture',
      method: RequestMethod.post,
      client: _client,
    );

    var response = await obj.makeCall();
    return CaptureTransactionResponse.fromJson(json.decode(response.body));
  }

  /// Charges a card represented by a card nonce or a [Customer]'s [Card] on file.
  Future<ChargeResponse> charge({
    String locationId,
    String idempotencyKey,
    Money amountMoney,
    String cardNonce,
    String customerCardId,
    bool delayCapture,
    String referenceId,
    String note,
    String customerId,
    Address billingAddress,
    Address shippingAddress,
    String buyerEmailAddress,
    String orderId,
    List<AdditionalRecipient> additionalRecipients,
    String verificationToken,
  }) async {
    var body = Map<String, dynamic>();
    body['idempotency_key'] = idempotencyKey ?? Uuid().v4();
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (cardNonce != null) body['card_nonce'] = cardNonce;
    if (customerCardId != null) body['customer_card_id'] = customerCardId;
    if (delayCapture != null) body['delay_capture'] = delayCapture;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (note != null) body['note'] = note;
    if (customerId != null) body['customer_id'] = customerId;
    if (billingAddress != null)
      body['billing_address'] = billingAddress.toJson();
    if (shippingAddress != null)
      body['shipping_address'] = shippingAddress.toJson();
    if (buyerEmailAddress != null)
      body['buyer_email_address'] = buyerEmailAddress;
    if (orderId != null) body['order_id'] = orderId;
    if (additionalRecipients != null)
      body['additional_recipients'] =
          additionalRecipients.map((item) => item.toJson()).toList();
    if (verificationToken != null)
      body['verification_token'] = verificationToken;

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/transactions',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return ChargeResponse.fromJson(json.decode(response.body));
  }

  /// Initiates a refund for a previously charged tender.
  Future<CreateRefundResponse> createRefund({
    String locationId,
    String transactionId,
    String idempotencyKey,
    String tenderId,
    String reason,
    Money amountMoney,
  }) async {
    var body = Map<String, dynamic>();
    body['idempotency_key'] = idempotencyKey ?? Uuid().v4();
    if (tenderId != null) body['amount_money'] = tenderId;
    if (reason != null) body['reason'] = reason;
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/transactions/$transactionId/refund',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return CreateRefundResponse.fromJson(json.decode(response.body));
  }

  /// Lists [Refund]s for one of a business's [Location]s.
  Future<ListRefundsResponse> listRefunds({
    String locationId,
    DateTime beginTime,
    DateTime endTime,
    SortOrder sortOrder,
    String cursor,
  }) async {
    List<QueryParam> queryParams = [
      if (beginTime != null)
        QueryParam('begin_time', beginTime.toIso8601String()),
      if (endTime != null) QueryParam('end_time', endTime.toIso8601String()),
      if (sortOrder != null)
        QueryParam('sort_order', getStringFromSortOrder(sortOrder)),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/refunds',
      method: RequestMethod.get,
      queryParams: queryParams,
      client: _client,
    );

    var response = await obj.makeCall();
    return ListRefundsResponse.fromJson(json.decode(response.body));
  }

  /// Lists [Transaction]s for a particular [Location].
  Future<ListTransactionsResponse> listTransactions({
    String locationId,
    DateTime beginTime,
    DateTime endTime,
    SortOrder sortOrder,
    String cursor,
  }) async {
    List<QueryParam> queryParams = [
      if (beginTime != null)
        QueryParam('begin_time', beginTime.toIso8601String()),
      if (endTime != null) QueryParam('end_time', endTime.toIso8601String()),
      if (sortOrder != null)
        QueryParam('sort_order', getStringFromSortOrder(sortOrder)),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/transactions',
      method: RequestMethod.get,
      queryParams: queryParams,
      client: _client,
    );

    var response = await obj.makeCall();
    return ListTransactionsResponse.fromJson(json.decode(response.body));
  }

  /// Retrieves details for a single [Transaction].
  Future<RetrieveTransactionResponse> retrieveTransaction({
    String locationId,
    String transactionId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/transactions/$transactionId',
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return RetrieveTransactionResponse.fromJson(json.decode(response.body));
  }

  /// Cancels a [Transaction] that was created with the `charge()` method with a `delayCapture` value of `true`.
  Future<VoidTransactionResponse> voidTransaction({
    String locationId,
    String transactionId,
  }) async {
    if (transactionId == null)
      throw ArgumentError('transactionId must not be null');
    if (locationId == null) throw ArgumentError('locationId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/transactions/$transactionId/void',
      method: RequestMethod.post,
      client: _client,
    );

    var response = await obj.makeCall();
    return VoidTransactionResponse.fromJson(json.decode(response.body));
  }
}
