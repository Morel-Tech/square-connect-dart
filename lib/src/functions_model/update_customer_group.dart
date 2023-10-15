import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'update_customer_group.g.dart';

@JsonSerializable()
class UpdateCustomerGroupRequest extends Equatable {
  const UpdateCustomerGroupRequest({
    this.group,
  });

  /// Converts a [Map] to an [UpdateCustomerGroupRequest]
  factory UpdateCustomerGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerGroupRequestFromJson(json);

  /// Converts a [UpdateCustomerGroupRequest] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateCustomerGroupRequestToJson(this);

  /// The CustomerGroup object including all the updates you want to make.
  final CustomerGroup? group;

  @override
  List<Object?> get props => [group];
}

@JsonSerializable()
class UpdateCustomerGroupResponse extends SquareResponse {
  const UpdateCustomerGroupResponse({this.group, super.errors});

  /// Converts a [Map] to an [UpdateCustomerGroupResponse]
  factory UpdateCustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerGroupResponseFromJson(json);

  /// Converts a [UpdateCustomerGroupResponse] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateCustomerGroupResponseToJson(this);

  /// The successfully updated customer group.
  final CustomerGroup? group;

  @override
  List<Object?> get props => [group, errors];
}
