import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:uuid/uuid.dart';

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
    List<OrderLineItemObjectRequest> items,
    List<String> taxIds,
    List<String> discountIds,
    FulfillmentRequest fulfillment,
  }) async {
    var body = Map<String, dynamic>();
    body['idempotency_key'] = Uuid().v4();
    var order = Map<String, dynamic>();
    if (locationId != null) order['location_id'] = locationId;
    if (referenceId != null) order['reference_id'] = referenceId;
    if (source != null) order['source'] = {'name': source};
    if (customerId != null) order['customer_id'] = customerId;
    if (items != null)  order['line_items'] = items.map((item) => item.toMap()).toList();
    if (taxIds != null) order['taxes'] = taxIds.map((taxId) => {'catalog_object_id': taxId}).toList();
    if (discountIds != null) order['discounts'] = discountIds.map((taxId) => {'catalog_object_id': taxId}).toList();
    if (fulfillment != null) order['fulfillments'] = [fulfillment.toMap()];
    body['order'] = order;

    print(json.encode(body));

    var obj = RequestObj(
      token: token,
      path: '/v2/locations/$locationId/orders',
      method: RequestMethod.post,
      client: client,
      body: body,
    );

    var response = await obj.makeCall();
    return CreateOrderResponse.fromJson(json.decode(response.body));
  }
}
