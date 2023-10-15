import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_customer_segment.g.dart';

@JsonSerializable()
class RetrieveCustomerSegmentResponse extends SquareResponse {
  const RetrieveCustomerSegmentResponse({this.segment, super.errors});

  /// Converts a [Map] to an [RetrieveCustomerSegmentResponse]
  factory RetrieveCustomerSegmentResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveCustomerSegmentResponseFromJson(json);

  /// Converts a [RetrieveCustomerSegmentResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$RetrieveCustomerSegmentResponseToJson(this);

  final CustomerSegment? segment;

  @override
  List<Object?> get props => [segment, errors];
}
