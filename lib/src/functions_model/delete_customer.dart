import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'delete_customer.g.dart';

@JsonSerializable()
class DeleteCustomerResponse extends SquareResponse {
  const DeleteCustomerResponse({super.errors});

  /// Converts a [Map] to an [DeleteCustomerResponse]
  factory DeleteCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCustomerResponseFromJson(json);

  /// Converts a [DeleteCustomerResponse] to a [Map]
  Map<String, dynamic> toJson() => _$DeleteCustomerResponseToJson(this);

  @override
  List<Object?> get props => [errors];
}
