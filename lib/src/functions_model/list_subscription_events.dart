import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_subscription_events.g.dart';

@JsonSerializable()
class ListSubscriptionEventsResponse extends SquareResponse {
  const ListSubscriptionEventsResponse({
    super.errors,
    this.subscriptionEvents,
    this.cursor,
  });

  /// Converts a [Map] to an [ListSubscriptionEventsResponse]
  factory ListSubscriptionEventsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListSubscriptionEventsResponseFromJson(json);

  /// Converts a [ListSubscriptionEventsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListSubscriptionEventsResponseToJson(this);

  final List<SubscriptionEvent>? subscriptionEvents;
  final String? cursor;

  @override
  List<Object?> get props => [errors, subscriptionEvents, cursor];
}
