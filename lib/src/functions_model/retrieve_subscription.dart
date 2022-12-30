import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_subscription.g.dart';

@JsonSerializable()
class RetrieveSubscriptionResponse extends SquareResponse {
  const RetrieveSubscriptionResponse({this.subscription, super.errors});

  /// Converts a [Map] to an [RetrieveSubscriptionResponse]
  factory RetrieveSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveSubscriptionResponseFromJson(json);

  /// Converts a [RetrieveSubscriptionResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveSubscriptionResponseToJson(this);

  /// The subscription retrieved.
  final Subscription? subscription;

  @override
  List<Object?> get props => [errors, subscription];
}
