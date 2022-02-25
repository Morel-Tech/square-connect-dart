import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_customers.g.dart';

@JsonSerializable()
class ListCustomersResponse extends SquareResponse {
  const ListCustomersResponse({
    List<SquareError>? errors,
    this.customers,
    this.cursor,
  }) : super(errors: errors);

  /// Converts a [Map] to an [ListCustomersResponse]
  factory ListCustomersResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCustomersResponseFromJson(json);

  /// Converts a [ListCustomersResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListCustomersResponseToJson(this);
  final List<Customer>? customers;
  final String? cursor;

  @override
  List<Object?> get props => [customers, cursor, errors];
}
