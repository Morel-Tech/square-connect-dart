// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'square_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SquareApiClient implements SquareApiClient {
  _SquareApiClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ListLocationsResponse> listLocations() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListLocationsResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/locations',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListLocationsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RetrieveLocationResponse> retrieveLocation(locationId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RetrieveLocationResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/locations/$locationId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RetrieveLocationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreateLocationResponse> createLocation(input) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(input.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreateLocationResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/locations',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreateLocationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UpdateLocationResponse> updateLocation(locationId, input) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(input.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UpdateLocationResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/locations/$locationId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UpdateLocationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ObtainTokenResponse> obtainToken(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ObtainTokenResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/oauth2/token',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ObtainTokenResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RevokeTokenResponse> revokeToken(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RevokeTokenResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/oauth2/revoke',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RevokeTokenResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RetrieveMerchantResponse> retrieveMerchant(merchantId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RetrieveMerchantResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/merchants/$merchantId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RetrieveMerchantResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListMerchantsResponse> listMerchants(cursor) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'cursor': cursor};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListMerchantsResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/merchants',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListMerchantsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListCatalogResponse> listCatalog(
      {cursor, types, catalogVersion}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'cursor': cursor,
      r'types': types,
      r'catalog_version': catalogVersion
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListCatalogResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/catalog/list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListCatalogResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListCatalogResponse> searchCatalog(
      {cursor,
      objectTypes,
      includeDeletedObjects,
      includeRelatedObjects,
      beginTime,
      query,
      limit}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'cursor': cursor,
      r'object_types': objectTypes,
      r'include_deleted_objects': includeDeletedObjects,
      r'include_related_objects': includeRelatedObjects,
      r'begin_time': beginTime,
      r'query': query?.toJson(),
      r'limit': limit
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListCatalogResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/catalog/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListCatalogResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RetrieveOrderResponse> retrieveOrder(orderId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RetrieveOrderResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/orders/$orderId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RetrieveOrderResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreateOrderResponse> createOrder(createOrderRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createOrderRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreateOrderResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/orders',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreateOrderResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UpdateOrderResponse> updateOrder(orderId, updateOrderRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updateOrderRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UpdateOrderResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/orders/$orderId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UpdateOrderResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PayOrderResponse> payOrder(orderId, payOrderRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payOrderRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PayOrderResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/orders/$orderId/pay',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PayOrderResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreatePaymentResponse> createPayment(createPaymentRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createPaymentRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreatePaymentResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/payments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreatePaymentResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ListCustomersResponse> listCustomers(
      cursor, limit, sortField, sortOrder) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'cursor': cursor,
      r'limit': limit,
      r'sort_field': sortField?.toJson(),
      r'sort_order': sortOrder?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListCustomersResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/customers',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListCustomersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreateCustomerResponse> createCustomer(createCustomerRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createCustomerRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreateCustomerResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/customers',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreateCustomerResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SearchCustomersResponse> searchCustomers(
      searchCustomersRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(searchCustomersRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SearchCustomersResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/customers/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SearchCustomersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DeleteCustomerResponse> deleteCustomer(customerId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DeleteCustomerResponse>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/customers/$customerId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DeleteCustomerResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RetrieveCustomerResponse> retrieveCustomer(customerId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RetrieveCustomerResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v2/customers/$customerId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RetrieveCustomerResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
