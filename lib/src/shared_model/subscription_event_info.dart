import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'subscription_event_info.g.dart';

@JsonSerializable()
class SubscriptionEventInfo extends Equatable {
  const SubscriptionEventInfo({
    this.code,
    this.detail,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SubscriptionEventInfo]
  factory SubscriptionEventInfo.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventInfoFromJson(json);

  /// Converts a [SubscriptionEventInfo] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SubscriptionEventInfoToJson(this);

  /// An info code indicating the subscription event that occurred.
  final SubscriptionEventInfoCode? code;

  /// A human-readable explanation for the event.
  final String? detail;

  @override
  List<Object?> get props => [code, detail];
}
