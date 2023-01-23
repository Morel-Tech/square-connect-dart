// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as String?,
      version: json['version'] as int?,
      locationId: json['location_id'] as String?,
      orderId: json['order_id'] as String?,
      primaryRecipient: json['primary_recipient'] == null
          ? null
          : InvoiceRecipient.fromJson(
              json['primary_recipient'] as Map<String, dynamic>),
      paymentRequests: (json['payment_requests'] as List<dynamic>?)
          ?.map(
              (e) => InvoicePaymentRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryMethod: $enumDecodeNullable(
          _$InvoiceDeliveryMethodEnumMap, json['delivery_method']),
      invoiceNumber: json['invoice_number'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      scheduledAt: json['scheduled_at'] as String?,
      publicUrl: json['public_url'] as String?,
      nextPaymentAmountMoney: json['next_payment_amount_money'] == null
          ? null
          : Money.fromJson(
              json['next_payment_amount_money'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']),
      timezone: json['timezone'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      acceptedPaymentMethods: json['accepted_payment_methods'] == null
          ? null
          : InvoiceAcceptedPaymentMethods.fromJson(
              json['accepted_payment_methods'] as Map<String, dynamic>),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => InvoiceCustomField.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionId: json['subscription_id'] as String?,
      saleOrServiceDate: json['sale_or_service_date'] as String?,
      paymentConditions: json['payment_conditions'] as String?,
      storePaymentMethodEnabled: json['store_payment_method_enabled'] as bool?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('version', instance.version);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('primary_recipient', instance.primaryRecipient?.toJson());
  writeNotNull('payment_requests',
      instance.paymentRequests?.map((e) => e.toJson()).toList());
  writeNotNull('delivery_method',
      _$InvoiceDeliveryMethodEnumMap[instance.deliveryMethod]);
  writeNotNull('invoice_number', instance.invoiceNumber);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('scheduled_at', instance.scheduledAt);
  writeNotNull('public_url', instance.publicUrl);
  writeNotNull(
      'next_payment_amount_money', instance.nextPaymentAmountMoney?.toJson());
  writeNotNull('status', _$InvoiceStatusEnumMap[instance.status]);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull(
      'accepted_payment_methods', instance.acceptedPaymentMethods?.toJson());
  writeNotNull(
      'custom_fields', instance.customFields?.map((e) => e.toJson()).toList());
  writeNotNull('subscription_id', instance.subscriptionId);
  writeNotNull('sale_or_service_date', instance.saleOrServiceDate);
  writeNotNull('payment_conditions', instance.paymentConditions);
  writeNotNull(
      'store_payment_method_enabled', instance.storePaymentMethodEnabled);
  return val;
}

const _$InvoiceDeliveryMethodEnumMap = {
  InvoiceDeliveryMethod.email: 'EMAIL',
  InvoiceDeliveryMethod.shareManually: 'SHARE_MANUALLY',
  InvoiceDeliveryMethod.sms: 'SMS',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'DRAFT',
  InvoiceStatus.unpaid: 'UNPAID',
  InvoiceStatus.scheduled: 'SCHEDULED',
  InvoiceStatus.partiallyPaid: 'PARTIALLY_PAID',
  InvoiceStatus.paid: 'PAID',
  InvoiceStatus.partiallyRefunded: 'PARTIALLY_REFUNDED',
  InvoiceStatus.refunded: 'REFUNDED',
  InvoiceStatus.canceled: 'CANCELED',
  InvoiceStatus.failed: 'FAILED',
  InvoiceStatus.paymentPending: 'PAYMENT_PENDING',
};
