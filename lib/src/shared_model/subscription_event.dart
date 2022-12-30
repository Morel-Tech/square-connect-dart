import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'subscription_event.g.dart';

@JsonSerializable()
class SubscriptionEvent extends Equatable {
  const SubscriptionEvent({
    required this.id,
    required this.subscriptionEventType,
    required this.effectiveDate,
    required this.planId,
    this.info,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SubscriptionEvent]
  factory SubscriptionEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventFromJson(json);

  /// Converts a [SubscriptionEvent] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SubscriptionEventToJson(this);

  /// The ID of the subscription event.
  final String id;

  /// Type of the subscription event.
  final SubscriptionEventSubscriptionEventType subscriptionEventType;

  /// The `YYYY-MM-DD`-formatted date (for example, 2013-01-15) when the
  /// subscription event occurred.
  final String effectiveDate;

  /// The ID of the subscription plan associated with the subscription.
  final String planId;

  /// Additional information about the subscription event.
  final SubscriptionEventInfo? info;

  @override
  List<Object?> get props => [
        id,
        subscriptionEventType,
        effectiveDate,
        planId,
        info,
      ];
}
