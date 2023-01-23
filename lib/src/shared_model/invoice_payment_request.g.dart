// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicePaymentRequest _$InvoicePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    InvoicePaymentRequest(
      automaticPaymentSource: $enumDecodeNullable(
          _$InvoiceAutomaticPaymentSourceEnumMap,
          json['automatic_payment_source']),
      cardId: json['card_id'] as String?,
      computedAmountMoney: json['computed_amount_money'] == null
          ? null
          : Money.fromJson(
              json['computed_amount_money'] as Map<String, dynamic>),
      dueDate: json['due_date'] as String?,
      fixedAmountRequestedMoney: json['fixed_amount_requested_money'] == null
          ? null
          : Money.fromJson(
              json['fixed_amount_requested_money'] as Map<String, dynamic>),
      percentageRequested: json['percentage_requested'] as String?,
      reminders: (json['reminders'] as List<dynamic>?)
          ?.map(
              (e) => InvoicePaymentReminder.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestType: $enumDecodeNullable(
          _$InvoiceRequestTypeEnumMap, json['request_type']),
      roundedAdjustmentIncludedMoney:
          json['rounded_adjustment_included_money'] == null
              ? null
              : Money.fromJson(json['rounded_adjustment_included_money']
                  as Map<String, dynamic>),
      tippingEnabled: json['tipping_enabled'] as bool?,
      totalCompletedAmountMoney: json['total_completed_amount_money'] == null
          ? null
          : Money.fromJson(
              json['total_completed_amount_money'] as Map<String, dynamic>),
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$InvoicePaymentRequestToJson(
    InvoicePaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('automatic_payment_source',
      _$InvoiceAutomaticPaymentSourceEnumMap[instance.automaticPaymentSource]);
  writeNotNull('card_id', instance.cardId);
  writeNotNull('computed_amount_money', instance.computedAmountMoney?.toJson());
  writeNotNull('due_date', instance.dueDate);
  writeNotNull('fixed_amount_requested_money',
      instance.fixedAmountRequestedMoney?.toJson());
  writeNotNull('percentage_requested', instance.percentageRequested);
  writeNotNull(
      'reminders', instance.reminders?.map((e) => e.toJson()).toList());
  writeNotNull(
      'request_type', _$InvoiceRequestTypeEnumMap[instance.requestType]);
  writeNotNull('rounded_adjustment_included_money',
      instance.roundedAdjustmentIncludedMoney?.toJson());
  writeNotNull('tipping_enabled', instance.tippingEnabled);
  writeNotNull('total_completed_amount_money',
      instance.totalCompletedAmountMoney?.toJson());
  writeNotNull('uid', instance.uid);
  return val;
}

const _$InvoiceAutomaticPaymentSourceEnumMap = {
  InvoiceAutomaticPaymentSource.none: 'NONE',
  InvoiceAutomaticPaymentSource.cardOnFile: 'CARD_ON_FILE',
  InvoiceAutomaticPaymentSource.bankOnFile: 'BANK_ON_FILE',
};

const _$InvoiceRequestTypeEnumMap = {
  InvoiceRequestType.balance: 'BALANCE',
  InvoiceRequestType.deposit: 'DEPOSIT',
  InvoiceRequestType.installment: 'INSTALLMENT',
};
