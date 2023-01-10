import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'batch_retrieve_orders.g.dart';

@JsonSerializable()
class BatchRetrieveOrdersRequest extends Equatable {
  const BatchRetrieveOrdersRequest({
    required this.orderIds,
    this.locationId,
  });

  /// Converts a [Map] to an [BatchRetrieveOrdersRequest]
  factory BatchRetrieveOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchRetrieveOrdersRequestFromJson(json);

  /// Converts a [BatchRetrieveOrdersRequest] to a [Map]
  Map<String, dynamic> toJson() => _$BatchRetrieveOrdersRequestToJson(this);

  /// The ID of the location for these orders. This field is optional: omit it
  /// to retrieve orders within the scope of the current authorization's
  /// merchant ID.
  final String? locationId;

  /// The IDs of the orders to retrieve. A maximum of 100 orders can be
  /// retrieved per request.
  final List<String> orderIds;

  @override
  List<Object?> get props => [locationId, orderIds];
}

@JsonSerializable()
class BatchRetrieveOrdersResponse extends SquareResponse {
  const BatchRetrieveOrdersResponse({
    this.orders,
    super.errors,
  });

  /// Converts a [Map] to an [BatchRetrieveOrdersResponse]
  factory BatchRetrieveOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$BatchRetrieveOrdersResponseFromJson(json);

  /// Converts a [BatchRetrieveOrdersResponse] to a [Map]
  Map<String, dynamic> toJson() => _$BatchRetrieveOrdersResponseToJson(this);

  final List<Order>? orders;

  @override
  List<Object?> get props => [orders, errors];
}
