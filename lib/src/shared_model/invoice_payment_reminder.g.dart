// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_payment_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicePaymentReminder _$InvoicePaymentReminderFromJson(
        Map<String, dynamic> json) =>
    InvoicePaymentReminder(
      message: json['message'] as String?,
      relativeScheduledDays: json['relative_scheduled_days'] as int?,
      sentAt: json['sent_at'] as String?,
      status: $enumDecodeNullable(
          _$InvoicePaymentReminderStatusEnumMap, json['status']),
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$InvoicePaymentReminderToJson(
    InvoicePaymentReminder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('relative_scheduled_days', instance.relativeScheduledDays);
  writeNotNull('sent_at', instance.sentAt);
  writeNotNull(
      'status', _$InvoicePaymentReminderStatusEnumMap[instance.status]);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$InvoicePaymentReminderStatusEnumMap = {
  InvoicePaymentReminderStatus.pending: 'PENDING',
  InvoicePaymentReminderStatus.notApplicable: 'NOT_APPLICABLE',
  InvoicePaymentReminderStatus.sent: 'SENT',
};
