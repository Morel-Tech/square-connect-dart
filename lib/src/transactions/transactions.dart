import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';

/// An object containing all methods for the Transactions API. Retrieve this object with `SquareConnect.instance.transactionsApi`.
class TransactionsApi {
  final String _token;
  final Client _client;

  TransactionsApi(this._token, this._client);

  Future<CaptureTransactionResponse> captureTransaction({
    String locationId,
    String transactionId,
  }) async {

  }

  Future<ChargeResponse> charge({
    String locationId,
    String idempotencyKey,
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

  }

  Future<CreateRefundResponse> createRefund({
    String locationId,
    String transactionId,
    String idempotencyKey,
    String tenderId,
    String reason,
    Money amountMoney,
  }) async {

  }

    Future<ListRefundsResponse> listRefunds({
    String locationId,
    DateTime beginTime,
    DateTime endTime,
    SortOrder sortOrder,
    String cursor,
  }) async {

  }

  Future<ListTransactionsResponse> listTransactions({
    String locationId,
    DateTime beginTime,
    DateTime endTime,
    SortOrder sortOrder,
    String cursor,
  }) async {

  }

  Future<RetrieveTransactionResponse> retrieveTransaction({
    String locationId,
    String transactionId,
  }) async {

  }

  Future<VoidTransactionResponse> voidTransaction({
    String locationId,
    String transactionId,
  }) async {

  }

}