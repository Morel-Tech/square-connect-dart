import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'delete_customer_group.g.dart';

@JsonSerializable()
class DeleteCustomerGroupResponse extends SquareResponse {
  const DeleteCustomerGroupResponse({super.errors});

  /// Converts a [Map] to an [DeleteCustomerGroupResponse]
  factory DeleteCustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCustomerGroupResponseFromJson(json);

  /// Converts a [DeleteCustomerGroupResponse] to a [Map]
  Map<String, dynamic> toJson() => _$DeleteCustomerGroupResponseToJson(this);

  @override
  List<Object?> get props => [errors];
}
