import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

class OrdersApi {
  final String token;
  final Client client;

  OrdersApi({this.token, this.client})
      : assert(token != null),
        assert(client != null);

  Future<CreateOrderResponse> createOrder({
    String locationId,
    String referenceId,
    String source,
    String customerId,
    List<CreateOrderLineItemObject> items,
    List<String> taxIds,
    List<String> discountIds,
  }) async {
    var obj = RequestObj(
      token: token,
      path: '/v2/locations/$locationId/orders',
      method: RequestMethod.post,
      client: client,
    );

    var response = await obj.makeCall();
    return CreateOrderResponse.fromJson(json.decode(response.body));
  }
}
