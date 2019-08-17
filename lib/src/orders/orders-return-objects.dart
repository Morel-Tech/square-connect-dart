import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/super-classes.dart';

/// The response to the `createOrder()` method in [OrdersApi].
class CreateOrderResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [Order].
  final Order order;

  CreateOrderResponse({this.errors, this.order})
      : assert(xor(errors == null, order == null));

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) {
    return CreateOrderResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      order: json['order'] != null ? Order.fromJson(json['order']) : null,
    );
  }
}

/// The response to the `batchRetrieveOrders()` method in [OrdersApi].
class BatchRetrieveOrdersResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [Order]s.
  final List<Order> orders;

  /// List of [Transaction] ids within the requested set of ids that encountered transformation issues when being converted to an [Order].
  final List<String> unconvertibleTransactionIds;

  BatchRetrieveOrdersResponse(
      {this.errors, this.orders, this.unconvertibleTransactionIds});

  factory BatchRetrieveOrdersResponse.fromJson(Map<String, dynamic> json) {
    return BatchRetrieveOrdersResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      orders: json['orders'] != null
          ? (json['orders'] as List)
              .map((item) => Order.fromJson(item))
              .toList()
          : null,
      unconvertibleTransactionIds: json['unconvertible_transaction_ids'] != null
          ? List<String>.from(json['unconvertible_transaction_ids'])
          : null,
    );
  }
}

/// The response to the `searchOrders()` method in [OrdersApi].
class SearchOrdersResponse extends ApiResponse {
  /// A pagination cursor to be used in a future call.
  final String cursor;

  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The list of [Order]s returned.
  final List<Order> orders;

  /// List of [Transaction] ids within the requested set of ids that encountered transformation issues when being converted to an [Order].
  final List<String> unconvertibleTransactionIds;

  /// The [OrderEntry]s returned if `returnEntries` is set to true.
  final List<OrderEntry> orderEntries;

  SearchOrdersResponse(
      {this.errors,
      this.orders,
      this.orderEntries,
      this.cursor,
      this.unconvertibleTransactionIds});

  factory SearchOrdersResponse.fromJson(Map<String, dynamic> json) {
    return SearchOrdersResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      orders: json['orders'] != null
          ? (json['orders'] as List)
              .map((item) => Order.fromJson(item))
              .toList()
          : null,
      orderEntries: json['order_entries'] != null
          ? (json['order_entries'] as List)
              .map((item) => OrderEntry.fromJson(item))
              .toList()
          : null,
      unconvertibleTransactionIds: json['unconvertible_transaction_ids'] != null
          ? List<String>.from(json['unconvertible_transaction_ids'])
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `payOrder()` method in [OrdersApi].
class PayOrderResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The paid and updated [Order].
  final Order order;

  PayOrderResponse(
      {this.errors,
      this.order});

  factory PayOrderResponse.fromJson(Map<String, dynamic> json) {
    return PayOrderResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      order: json['orders'] != null
          ? Order.fromJson(json['order'])
          : null,
    );
  }
}

/// The response to the `updateOrder()` method in [OrdersApi].
class UpdateOrderResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The updated [Order].
  final Order order;

  UpdateOrderResponse(
      {this.errors,
      this.order});

  factory UpdateOrderResponse.fromJson(Map<String, dynamic> json) {
    return UpdateOrderResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      order: json['orders'] != null
          ? Order.fromJson(json['order'])
          : null,
    );
  }
}
