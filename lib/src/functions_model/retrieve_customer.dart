import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_customer.g.dart';

@JsonSerializable()
class RetrieveCustomerResponse extends SquareResponse {
  const RetrieveCustomerResponse({
    super.errors,
    this.customer,
  });

  /// Converts a [Map] to an [RetrieveCustomerResponse]
  factory RetrieveCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveCustomerResponseFromJson(json);

  /// Converts a [RetrieveCustomerResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveCustomerResponseToJson(this);

  final Customer? customer;

  @override
  List<Object?> get props => [errors, customer];
}
