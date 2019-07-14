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
