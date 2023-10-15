import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_customer_segments.g.dart';

@JsonSerializable()
class ListCustomerSegmentsResponse extends SquareResponse {
  const ListCustomerSegmentsResponse({
    this.segments,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [ListCustomerSegmentsResponse]
  factory ListCustomerSegmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCustomerSegmentsResponseFromJson(json);

  /// Converts a [ListCustomerSegmentsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListCustomerSegmentsResponseToJson(this);

  /// The list of customer segments belonging to the associated Square account.
  final List<CustomerSegment>? segments;

  /// A pagination cursor to be used in subsequent calls to
  /// ListCustomerSegments to retrieve the next set of query results. The cursor
  ///  is only present if the request succeeded and additional results are
  /// available.
  final String? cursor;

  @override
  List<Object?> get props => [segments, cursor, errors];
}
