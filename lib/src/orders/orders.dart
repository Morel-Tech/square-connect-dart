import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/orders/orders-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';

/// An object containing all methods for the Orders API. Retrieve this object with `SquareConnect.instance.ordersApi`.
class OrdersApi {
  final String _token;
  final Client _client;

  OrdersApi(this._token, this._client);

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
    if (items != null)
      order['line_items'] = items.map((item) => item.toMap()).toList();
    if (taxIds != null)
      order['taxes'] =
          taxIds.map((taxId) => {'catalog_object_id': taxId}).toList();
    if (discountIds != null)
      order['discounts'] =
          discountIds.map((taxId) => {'catalog_object_id': taxId}).toList();
    if (fulfillment != null) order['fulfillments'] = [fulfillment.toMap()];
    body['order'] = order;

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/orders',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return CreateOrderResponse.fromJson(json.decode(response.body));
  }

  /// A method for retreiving multiple orders in one batch. A maximum of 100 orders is allowed. Per request.
  /// NOTE: If an orderId does not exist, it is ignored instead of generating an error.
  Future<BatchRetrieveOrdersResponse> batchRetrieveOrders({
    /// The locationIds of the Orders
    String locationId,

    /// A list of orderIds to retrieve.
    List<String> orderIds,
  }) async {
    if (orderIds == null) throw ArgumentError('orderIds must not be null');
    if (locationId == null) throw ArgumentError('locationId must not be null');

    var body = Map<String, dynamic>();
    if (orderIds != null) body['order_ids'] = orderIds;

    var obj = RequestObj(
      token: _token,
      path: '/v2/locations/$locationId/orders/batch-retrieve',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return BatchRetrieveOrdersResponse.fromJson(json.decode(response.body));
  }

  /// A method to search orders from Square POS or `createOrder` endpoint. You can input any filter and sorting information and it will work in all but a few cases (stated below).
  /// If left null, the filter/sort types will not be factored in searching.
  Future<SearchOrdersResponse> searchOrders({
    /// A pagination cursor returned by previous endpoint. NOTE: query parameters must be the same as the previous call's query.
    String cursor,

    /// The locations ids of the locations to search. Min: 1, Max, 10
    List<String> locationIds,

    /// The number of orders returned with a single call. Default: 500
    int limit,

    /// If true, method will return [Order Entry] objects instead of [Order] objects. Default: false
    bool returnEntries,

    /// The order field to sort on.
    String sortField,

    /// The order in with orders will be sorted.
    SortOrder sortOrder,

    /// [OrderState]s to filter with.
    List<OrderState> orderStatesFilter,

    /// Starting time (inclusive) of order creation time. Cannot use with `updateAt` filter or `closedAt` filter.
    DateTime createdAtStartFilter,

    /// Ending time (inclusive) of order creation time. Cannot use with `updateAt` filter or `closedAt` filter.
    DateTime createdAtEndFilter,

    /// Starting time (inclusive) of order creation time. Cannot use with `createdAt` filter or `closedAt` filter.
    DateTime updatedAtStartFilter,

    /// Ending time (inclusive) of order creation time. Cannot use with `createdAt` filter or `closedAt` filter.
    DateTime updatedAtEndFilter,

    /// Starting time (inclusive) of order creation time. Cannot use with `updateAt` filter or `createdAt` filter.
    DateTime closedAtStartFilter,

    /// Ending time (inclusive) of order creation time. Cannot use with `updateAt` filter or `createdAt` filter.
    DateTime closedAtEndFilter,

    /// [OrderFulfillmentType]s to filter with.
    List<OrderFulfillmentType> fulfilmentTypesFilter,

    /// [OrderFulfillmentState]s to filter with.
    List<OrderFulfillmentState> fulfilmentStatesFilter,

    /// [OrderSource]s to filter with as Strings (the name field in [OrderSource]).
    List<String> sourcesFilter,

    /// CustomerIds to filter with. NOTE: Only based on Order customer_id and any [Tender] customer_id.
    List<String> customerIdsFilter,
  }) async {
    var body = Map<String, dynamic>();
    if (locationIds != null) body['location_ids'] = locationIds;
    if (cursor != null) body['cursor'] = cursor;
    if (limit != null) body['limit'] = limit;
    if (returnEntries != null) body['return_entries'] = returnEntries;

    // make sort field
    var sort = Map<String, dynamic>();
    if (sortField != null) sort['sort_field'] = sortField;
    if (sortOrder != null)
      sort['sort_order'] = getStringFromSortOrder(sortOrder);

    // make filter object
    var filter = Map<String, dynamic>();

    // case for state filter
    if (orderStatesFilter != null)
      filter['state_filter'] = Map<String, dynamic>();
    if (orderStatesFilter != null)
      filter['state_filter']['states'] = orderStatesFilter
          .map((state) => getStringFromOrderState(state))
          .toList();

    // case for date time filter
    if (createdAtStartFilter != null ||
        createdAtEndFilter != null ||
        updatedAtStartFilter != null ||
        updatedAtEndFilter != null ||
        closedAtStartFilter != null ||
        closedAtEndFilter != null)
      filter['date_time_filter'] = Map<String, dynamic>();

    if (createdAtStartFilter != null || createdAtEndFilter != null)
      filter['date_time_filter']['created_at'] = Map<String, dynamic>();
    if (createdAtStartFilter != null)
      filter['date_time_filter']['created_at']['start_at'] =
          createdAtStartFilter.toIso8601String();
    if (createdAtStartFilter != null)
      filter['date_time_filter']['created_at']['end_at'] =
          createdAtEndFilter.toIso8601String();

    if (updatedAtStartFilter != null || updatedAtEndFilter != null)
      filter['date_time_filter']['updated_at'] = Map<String, dynamic>();
    if (updatedAtStartFilter != null)
      filter['date_time_filter']['updated_at']['start_at'] =
          updatedAtStartFilter.toIso8601String();
    if (updatedAtStartFilter != null)
      filter['date_time_filter']['updated_at']['end_at'] =
          updatedAtEndFilter.toIso8601String();

    if (closedAtStartFilter != null || closedAtEndFilter != null)
      filter['date_time_filter']['closed_at'] = Map<String, dynamic>();
    if (closedAtStartFilter != null)
      filter['date_time_filter']['closed_at']['start_at'] =
          closedAtStartFilter.toIso8601String();
    if (closedAtStartFilter != null)
      filter['date_time_filter']['closed_at']['end_at'] =
          closedAtEndFilter.toIso8601String();

    // case for fulfillment filter
    if (fulfilmentStatesFilter != null || fulfilmentTypesFilter != null)
      filter['fulfillment_filter'] = Map<String, dynamic>();
    if (closedAtStartFilter != null)
      filter['fulfillment_filter']['fulfillment_types'] = fulfilmentTypesFilter
          .map((type) => getStringFromOrderFulfillmentType(type))
          .toList();
    if (closedAtStartFilter != null)
      filter['fulfillment_filter']['fulfillment_states'] =
          fulfilmentStatesFilter
              .map((state) => getStringFromOrderFulfillmentState(state))
              .toList();

    // case for source filter
    if (sourcesFilter != null) filter['state_filter'] = Map<String, dynamic>();
    if (sourcesFilter != null) filter['state_filter']['states'] = sourcesFilter;

    // case for customer filter
    if (customerIdsFilter != null)
      filter['customer_filter'] = Map<String, dynamic>();
    if (customerIdsFilter != null)
      filter['customer_filter']['customer_ids'] = customerIdsFilter;

    var query = Map<String, dynamic>();

    if (sortField != null || sortOrder != null) query['sort'] = sort;

    if (createdAtStartFilter != null ||
        createdAtEndFilter != null ||
        updatedAtStartFilter != null ||
        updatedAtEndFilter != null ||
        closedAtStartFilter != null ||
        closedAtEndFilter != null ||
        fulfilmentTypesFilter != null ||
        fulfilmentStatesFilter != null ||
        sourcesFilter != null ||
        customerIdsFilter != null) query['filter'] = filter;

    if (sortField != null ||
        sortOrder != null ||
        createdAtStartFilter != null ||
        createdAtEndFilter != null ||
        updatedAtStartFilter != null ||
        updatedAtEndFilter != null ||
        closedAtStartFilter != null ||
        closedAtEndFilter != null ||
        fulfilmentTypesFilter != null ||
        fulfilmentStatesFilter != null ||
        sourcesFilter != null ||
        customerIdsFilter != null) body['query'] = query;

    var obj = RequestObj(
      token: _token,
      path: '/v2/orders/search',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return SearchOrdersResponse.fromJson(json.decode(response.body));
  }
}
