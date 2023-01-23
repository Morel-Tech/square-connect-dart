import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_payment_reminder.g.dart';

@JsonSerializable()
class InvoicePaymentReminder extends Equatable {
  const InvoicePaymentReminder({
    this.message,
    this.relativeScheduledDays,
    this.sentAt,
    this.status,
    this.uid,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoicePaymentReminder]
  factory InvoicePaymentReminder.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentReminderFromJson(json);

  /// Converts a [InvoicePaymentReminder] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoicePaymentReminderToJson(this);

  /// The reminder message.
  final String? message;

  /// The number of days before (a negative number) or after (a positive number)
  ///  the payment request `due_date` when the reminder is sent. For example,
  /// -3 indicates that the reminder should be sent 3 days before the payment
  /// request `due_date`.
  final int? relativeScheduledDays;

  /// **Read only** If sent, the timestamp when the reminder was sent, in
  /// RFC 3339 format.
  final String? sentAt;

  /// **Read only** The status of the reminder.
  final InvoicePaymentReminderStatus? status;

  /// **Read only** A Square-assigned ID that uniquely identifies the reminder
  /// within the `InvoicePaymentRequest`.
  final String? uid;

  @override
  List<Object?> get props => [
        message,
        relativeScheduledDays,
        sentAt,
        status,
        uid,
      ];
}
