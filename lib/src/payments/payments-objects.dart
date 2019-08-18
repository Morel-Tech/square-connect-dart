import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/payments/payments-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';

class Payment {
  final String id;
  final Money amountMoney;
  final Money appFeeMoney;
  final Address billingAddress;
  final String buyerEmailAddress;
  final CardPaymentDetails cardDetails;
  final DateTime createdAt;
  final String customerId;
  final String locationId;
  final String note;
  final String orderId;
  final List<ProcessingFee> processingFee;
  final String referenceId;
  final List<String> refundIds;
  final Money refundedMoney;
  final Address shippingAddress;
  final String sourceType;
  final PaymentStatus status;
  final Money tipMoney;
  final Money totalMoney;
  final DateTime updatedAt;

  Payment(
      {this.id,
      this.amountMoney,
      this.appFeeMoney,
      this.billingAddress,
      this.buyerEmailAddress,
      this.cardDetails,
      this.createdAt,
      this.customerId,
      this.locationId,
      this.note,
      this.orderId,
      this.processingFee,
      this.referenceId,
      this.refundIds,
      this.refundedMoney,
      this.shippingAddress,
      this.sourceType,
      this.status,
      this.tipMoney,
      this.totalMoney,
      this.updatedAt});

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      appFeeMoney: json['app_fee_money'] != null
          ? Money.fromJson(json['app_fee_money'])
          : null,
      billingAddress: json['billing_address'] != null
          ? Address.fromJson(json['billing_address'])
          : null,
      buyerEmailAddress: json['buyer_email_address'],
      cardDetails: json['card_details'] != null
          ? CardPaymentDetails.fromJson(json['card_details'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      customerId: json['customer_id'],
      locationId: json['location_id'],
      note: json['note'],
      orderId: json['order_id'],
      processingFee: json['processing_fee'] != null
          ? (json['processing_fee'] as List)
              .map((item) => ProcessingFee.fromJson(item))
              .toList()
          : null,
      referenceId: json['reference_id'],
      refundIds: json['refund_ids'] != null
          ? List<String>.from(json['refund_ids'])
          : null,
      refundedMoney: json['refunded_money'] != null
          ? Money.fromJson(json['refunded_money'])
          : null,
      shippingAddress: json['shipping_address'] != null
          ? Address.fromJson(json['shipping_address'])
          : null,
      sourceType: json['source_type'],
      status: json['status'] != null
          ? getPaymentStatusFromString(json['status'])
          : null,
      tipMoney:
          json['tip_money'] != null ? Money.fromJson(json['tip_money']) : null,
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (appFeeMoney != null) body['app_fee_money'] = appFeeMoney.toJson();
    if (billingAddress != null)
      body['billing_address'] = billingAddress.toJson();
    if (buyerEmailAddress != null)
      body['buyer_email_address'] = buyerEmailAddress;
    if (cardDetails != null) body['card_details'] = cardDetails.toJson();
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (customerId != null) body['customer_id'] = customerId;
    if (locationId != null) body['location_id'] = locationId;
    if (note != null) body['note'] = note;
    if (orderId != null) body['order_id'] = orderId;
    if (processingFee != null)
      body['processing_fee'] =
          processingFee.map((item) => item.toJson()).toList();
    if (referenceId != null) body['reference_id'] = referenceId;
    if (refundIds != null) body['refund_ids'] = refundIds;
    if (refundedMoney != null) body['refunded_money'] = refundedMoney.toJson();
    if (shippingAddress != null)
      body['shipping_address'] = shippingAddress.toJson();
    if (sourceType != null) body['source_type'] = sourceType;
    if (status != null) body['status'] = getStringFromPaymentStatus(status);
    if (tipMoney != null) body['tip_money'] = tipMoney.toJson();
    if (totalMoney != null) body['total_money'] = totalMoney.toJson();
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();

    return body;
  }
}

class ProcessingFee {
  final Money amountMoney;
  final DateTime effectiveAt;
  final ProcessingFeeType type;

  ProcessingFee({this.amountMoney, this.effectiveAt, this.type});

  factory ProcessingFee.fromJson(Map<String, dynamic> json) {
    return ProcessingFee(
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      effectiveAt: json['effective_at'] != null
          ? DateTime.parse(json['effective_at'])
          : null,
      type: json['type'] != null
          ? getProcessingFeeTypeFromString(json['type'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (effectiveAt != null) body['effective_at'] = effectiveAt.toString();
    if (type != null) body['type'] = getStringFromProcessingFeeType(type);

    return body;
  }
}

class CardPaymentDetails {
  final String applicationCryptogram;
  final String applicationIdentifier;
  final String applicationName;
  final String authResultCode;
  final String avsStatus;
  final Card card;
  final String cvvStatus;
  final TenderCardDetailsEntryMethod entryMethod;
  final List<SquareError> errors;
  final TenderCardDetailsStatus status;

  CardPaymentDetails(
      {this.applicationCryptogram,
      this.applicationIdentifier,
      this.applicationName,
      this.authResultCode,
      this.avsStatus,
      this.card,
      this.cvvStatus,
      this.entryMethod,
      this.errors,
      this.status});

  factory CardPaymentDetails.fromJson(Map<String, dynamic> json) {
    return CardPaymentDetails(
      applicationCryptogram: json['application_cryptogram'],
      applicationIdentifier: json['application_identifier'],
      applicationName: json['application_name'],
      authResultCode: json['auth_result_code'],
      avsStatus: json['avs_status'],
      card: json['card'] != null ? Card.fromJson(json['card']) : null,
      cvvStatus: json['cvv_status'],
      entryMethod: json['entry_method'] != null
          ? getTenderCardDetailsEntryMethodFromString(json['entry_method'])
          : null,
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((item) => SquareError.fromJson(item))
              .toList()
          : null,
      status: json['status'] != null
          ? getTenderCardDetailsStatusFromString(json['status'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (applicationCryptogram != null)
      body['application_cryptogram'] = applicationCryptogram;
    if (applicationIdentifier != null)
      body['application_identifier'] = applicationIdentifier;
    if (applicationName != null) body['application_name'] = applicationName;
    if (authResultCode != null) body['auth_result_code'] = authResultCode;
    if (avsStatus != null) body['avs_status'] = avsStatus;
    if (card != null) body['card'] = card.toJson();
    if (cvvStatus != null) body['cvv_status'] = cvvStatus;
    if (entryMethod != null)
      body['entry_method'] =
          getStringFromTenderCardDetailsEntryMethod(entryMethod);
    if (errors != null)
      body['errors'] = errors.map((item) => item.toJson()).toList();
    if (status != null)
      body['status'] = getStringFromTenderCardDetailsStatus(status);

    return body;
  }
}

class BalancePaymentDetails {
  final String accountId;
  final BalancePaymentStatus status;

  BalancePaymentDetails({this.accountId, this.status});

  factory BalancePaymentDetails.fromJson(Map<String, dynamic> json) {
    return BalancePaymentDetails(
      accountId: json['account_id'],
      status: json['status'] != null
          ? getBalancePaymentStatusFromString(json['status'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (accountId != null) body['account_id'] = accountId;
    if (status != null)
      body['status'] = getStringFromBalancePaymentStatus(status);

    return body;
  }
}
