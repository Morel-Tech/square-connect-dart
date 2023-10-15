import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_customer_group.g.dart';

@JsonSerializable()
class CreateCustomerGroupRequest extends Equatable {
  const CreateCustomerGroupRequest({
    this.group,
    this.idempotencyKey,
  });

  /// Converts a [Map] to an [CreateCustomerGroupRequest]
  factory CreateCustomerGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerGroupRequestFromJson(json);

  /// Converts a [CreateCustomerGroupRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCustomerGroupRequestToJson(this);

  /// The idempotency key for the request.
  final String? idempotencyKey;

  /// The customer group to create.
  final CustomerGroup? group;

  @override
  List<Object?> get props => [idempotencyKey, group];
}

@JsonSerializable()
class CreateCustomerGroupResponse extends SquareResponse {
  const CreateCustomerGroupResponse({this.group, super.errors});

  /// Converts a [Map] to an [CreateCustomerGroupResponse]
  factory CreateCustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerGroupResponseFromJson(json);

  /// Converts a [CreateCustomerGroupResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCustomerGroupResponseToJson(this);

  /// The successfully created customer group.
  final CustomerGroup? group;

  @override
  List<Object?> get props => [group, errors];
}
