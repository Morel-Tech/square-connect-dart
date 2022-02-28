import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:square_connect/square_connect.dart';

part 'square_api_client.g.dart';

@RestApi()
abstract class SquareApiClient {
  factory SquareApiClient({
    required String accessToken,
    String baseUrl = 'https://connect.squareup.com',
    String? apiVersion,
  }) =>
      _SquareApiClient(
        Dio(
          BaseOptions(
            baseUrl: baseUrl,
            headers: <String, dynamic>{
              'Authorization': 'Bearer $accessToken',
              if (apiVersion != null) 'Square-Version': apiVersion,
            },
            contentType: 'application/json',
          ),
        ),
      );

  @GET('/v2/locations')
  Future<ListLocationsResponse> listLocations();

  @GET('/v2/locations/{locationId}')
  Future<RetrieveLocationResponse> retrieveLocation(@Path() String locationId);

  @POST('/v2/locations')
  Future<CreateLocationResponse> createLocation(
    @Body() CreateLocationRequest input,
  );

  @PUT('/v2/locations/{locationId}')
  Future<UpdateLocationResponse> updateLocation(
    @Path() String locationId,
    @Body() UpdateLocationRequest input,
  );

  @POST('/oauth2/token')
  Future<ObtainTokenResponse> obtainToken(@Body() ObtainTokenRequest request);

  @POST('/oauth2/revoke')
  Future<RevokeTokenResponse> revokeToken(@Body() RevokeTokenRequest request);

  @GET('/v2/merchants/{merchantId}')
  Future<RetrieveMerchantResponse> retrieveMerchant(@Path() String merchantId);

  @GET('/v2/merchants')
  Future<ListMerchantsResponse> listMerchants(@Query('cursor') int? cursor);

  @GET('/v2/catalog/list')
  Future<ListCatalogResponse> listCatalog({
    @Query('cursor') String? cursor,
    @Query('types') String? types,
    @Query('catalog_version') int? catalogVersion,
  });

  @GET('/v2/orders/{orderId}')
  Future<RetrieveOrderResponse> retrieveOrder(
    @Path() String orderId,
  );

  @POST('/v2/orders')
  Future<CreateOrderResponse> createOrder(
    @Body() CreateOrderRequest createOrderRequest,
  );

  @PUT('/v2/orders/{orderId}')
  Future<UpdateOrderResponse> updateOrder(
    @Path() String orderId,
    @Body() UpdateOrderRequest updateOrderRequest,
  );

  @POST('/v2/orders/{orderId}/pay')
  Future<PayOrderResponse> payOrder(
    @Path() String orderId,
    @Body() PayOrderRequest payOrderRequest,
  );

  @POST('/v2/payments')
  Future<CreatePaymentResponse> createPayment(
    @Body() CreatePaymentRequest createPaymentRequest,
  );

  // Customers API
  @GET('/v2/customers')
  Future<ListCustomersResponse> listCustomers(
    @Query('cursor') String? cursor,
    @Query('limit') int? limit,
    @Query('sort_field') CustomerSortField? sortField,
    @Query('sort_order') SortOrder? sortOrder,
  );

  @POST('/v2/customers')
  Future<CreateCustomerResponse> createCustomer(
    @Body() CreateCustomerRequest createCustomerRequest,
  );

  @POST('/v2/customers/search')
  Future<SearchCustomersResponse> searchCustomers(
    @Body() SearchCustomersRequest searchCustomersRequest,
  );

  @DELETE('/v2/customers/{customerId}')
  Future<DeleteCustomerResponse> deleteCustomer(
    @Path() String customerId,
  );

  @GET('/v2/customers/{customerId}')
  Future<RetrieveCustomerResponse> retrieveCustomer(
    @Path() String customerId,
  );
}
