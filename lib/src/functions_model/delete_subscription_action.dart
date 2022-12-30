import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'delete_subscription_action.g.dart';

@JsonSerializable()
class DeleteSubscriptionActionResponse extends SquareResponse {
  const DeleteSubscriptionActionResponse({
    this.subscription,
    super.errors,
  });

  /// Converts a [Map] to an [DeleteSubscriptionActionResponse]
  factory DeleteSubscriptionActionResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DeleteSubscriptionActionResponseFromJson(json);

  /// Converts a [DeleteSubscriptionActionResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$DeleteSubscriptionActionResponseToJson(this);

  final Subscription? subscription;

  @override
  List<Object?> get props => [errors, subscription];
}
