import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_customer_groups.g.dart';

@JsonSerializable()
class ListCustomerGroupsResponse extends SquareResponse {
  const ListCustomerGroupsResponse({
    this.groups,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [ListCustomerGroupsResponse]
  factory ListCustomerGroupsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCustomerGroupsResponseFromJson(json);

  /// Converts a [ListCustomerGroupsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListCustomerGroupsResponseToJson(this);

  /// A list of customer groups belonging to the current seller.
  final List<CustomerGroup>? groups;

  /// A pagination cursor to retrieve the next set of results for your
  /// original query to the endpoint. This value is present only if the
  /// request succeeded and additional results are available.
  final String? cursor;

  @override
  List<Object?> get props => [groups, cursor, errors];
}
