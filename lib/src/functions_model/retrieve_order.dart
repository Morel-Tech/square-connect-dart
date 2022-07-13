import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_order.g.dart';

@JsonSerializable()
class RetrieveOrderResponse extends SquareResponse {
  const RetrieveOrderResponse({
    required this.order,
    super.errors,
  });

  /// Converts a [Map] to an [RetrieveOrderResponse]
  factory RetrieveOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveOrderResponseFromJson(json);

  /// Converts a [RetrieveOrderResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveOrderResponseToJson(this);

  /// The requested order.
  final Order order;

  @override
  List<Object?> get props => [order, errors];
}
