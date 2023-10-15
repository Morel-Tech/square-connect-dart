import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_customer_group.g.dart';

@JsonSerializable()
class RetrieveCustomerGroupResponse extends SquareResponse {
  const RetrieveCustomerGroupResponse({this.group, super.errors});

  /// Converts a [Map] to an [RetrieveCustomerGroupResponse]
  factory RetrieveCustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveCustomerGroupResponseFromJson(json);

  /// Converts a [RetrieveCustomerGroupResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveCustomerGroupResponseToJson(this);

  final CustomerGroup? group;

  @override
  List<Object?> get props => [group, errors];
}
