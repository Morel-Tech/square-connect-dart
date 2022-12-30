import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'update_subscription.g.dart';

@JsonSerializable()
class UpdateSubscriptionRequest extends Equatable {
  const UpdateSubscriptionRequest({
    required this.subscription,
  });

  /// Converts a [Map] to an [UpdateSubscriptionRequest]
  factory UpdateSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionRequestFromJson(json);

  /// Converts a [UpdateSubscriptionRequest] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateSubscriptionRequestToJson(this);

  /// The subscription object containing the current version, and fields to
  /// update. Unset fields will be left at their current server values, and
  /// JSON null values will be treated as a request to clear the relevant data.
  final Subscription? subscription;

  @override
  List<Object?> get props => [subscription];
}

@JsonSerializable()
class UpdateSubscriptionResponse extends SquareResponse {
  const UpdateSubscriptionResponse({this.subscription, super.errors});

  /// Converts a [Map] to an [UpdateSubscriptionResponse]
  factory UpdateSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionResponseFromJson(json);

  /// Converts a [UpdateSubscriptionResponse] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateSubscriptionResponseToJson(this);

  /// The updated subscription.
  final Subscription? subscription;

  @override
  List<Object?> get props => [errors];
}
