import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

class CreateOrderResponse {
  final List<SquareError> errors;
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
      order: json['order'] != null
          ? Order.fromJson(json['order'])
          : null,
    );
  }

    get hasErrors {
      return errors != null;
    }
}

class BatchRetrieveOrdersResponse {
  final List<SquareError> errors;
  final List<Order> orders;
  final List<String> unconvertibleTransactionIds;

  BatchRetrieveOrdersResponse({this.errors, this.orders, this.unconvertibleTransactionIds});

  factory BatchRetrieveOrdersResponse.fromJson(Map<String, dynamic> json) {
    return BatchRetrieveOrdersResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      orders: json['orders'] != null
          ? (json['orders'] as List).map((item) => Order.fromJson(item)).toList()
          : null,
      unconvertibleTransactionIds: json['unconvertible_transaction_ids'] != null
          ? List<String>.from(json['unconvertible_transaction_ids'])
          : null,
    );
  }

    get hasErrors {
      return errors != null;
    }
}

class SearchOrdersResponse {
  final String cursor;
  final List<SquareError> errors;
  final List<Order> orders;
  final List<String> unconvertibleTransactionIds;
  final List<OrderEntry> orderEntries;

  SearchOrdersResponse({
    this.errors,
    this.orders,
    this.orderEntries,
    this.cursor,
    this.unconvertibleTransactionIds
  });

  factory SearchOrdersResponse.fromJson(Map<String, dynamic> json) {
    return SearchOrdersResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      orders: json['orders'] != null
          ? (json['orders'] as List).map((item) => Order.fromJson(item)).toList()
          : null,
      orderEntries: json['order_entries'] != null
          ? (json['order_entries'] as List).map((item) => OrderEntry.fromJson(item)).toList()
          : null,
      unconvertibleTransactionIds: json['unconvertible_transaction_ids'] != null
          ? List<String>.from(json['unconvertible_transaction_ids'])
          : null,
      cursor: json['cursor'],
    );
  }

    get hasErrors {
      return errors != null;
    }
}