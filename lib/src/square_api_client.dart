import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/functions_model/redeem_loyalty_reward.dart';

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
  Future<RevokeTokenResponse> revokeToken(
    @Body() RevokeTokenRequest request,
    @Header('Authorization') String applicationSecret,
  );

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

  @POST('/v2/catalog/search')
  Future<ListCatalogResponse> searchCatalog(
    @Body() SearchCatalogRequest searchCatalogRequest,
  );

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

  @PUT('/v2/customers/{customerId}')
  Future<UpdateCustomerResponse> updateCustomer(
    @Path() String customerId,
    @Body() UpdateCustomerRequest request,
  );

  @POST('/v2/locations/{locationId}/checkouts')
  Future<CreateCheckoutResponse> createCheckout(
    @Path() String locationId,
    @Body() CreateCheckoutRequest request,
  );

  @GET('/v2/online-checkout/payment-links')
  Future<ListPaymentResponse> listPaymentLinks({
    @Query('cursor') String? cursor,
    @Query('limit') int? limit,
  });

  @POST('/v2/online-checkout/payment-links')
  Future<CreatePaymentLinkResponse> createPaymentLink({
    @Body() required CreatePaymentLinkRequest request,
  });

  @GET('/v2/cards')
  Future<ListCardsResponse> listCards({
    @Query('cursor') String? cursor,
    @Query('customer_id') String? customerId,
    @Query('include_disabled') bool? includeDisabled,
    @Query('reference_id') String? referenceId,
    @Query('sort_order') String? sortOrder,
  });

  @POST('/v2/cards')
  Future<CreateCardResponse> createCard(
    @Body() CreateCardRequest request,
  );

  @GET('/v2/cards/{cardId}')
  Future<RetrieveCardResponse> retrieveCard({
    @Path() required String cardId,
  });

  @POST('/v2/cards/{cardId}/disable')
  Future<DisableCardResponse> disableCard({
    @Path() required String cardId,
  });

  @POST('/v2/loyalty/accounts')
  Future<CreateLoyaltyAccountResponse> createLoyaltyAccount({
    @Body() required CreateLoyaltyAccountRequest request,
  });

  @POST('/v2/loyalty/accounts/search')
  Future<SearchLoyaltyAccountsResponse> searchLoyaltyAccounts({
    @Body() required SearchLoyaltyAccountsRequest request,
  });

  @GET('/v2/loyalty/accounts/{accountId}')
  Future<RetrieveLoyaltyAccountResponse> retrieveLoyaltyAccount({
    @Path() required String accountId,
  });

  @POST('/v2/loyalty/accounts/{accountId}/accumulate')
  Future<AccumulateLoyaltyPointsResponse> accumulateLoyaltyPoints({
    @Body() required AccumulateLoyaltyPointsRequest request,
    @Path() required String accountId,
  });

  @POST('/v2/loyalty/accounts/{accountId}/adjust')
  Future<AdjustLoyaltyPointsResponse> adjustLoyaltyPoints({
    @Body() required AdjustLoyaltyPointsRequest request,
    @Path() required String accountId,
  });

  @POST('/v2/loyalty/events/search')
  Future<SearchLoyaltyEventsResponse> searchLoyaltyEvents({
    @Body() required SearchLoyaltyEventsRequest request,
  });

  @GET('/v2/loyalty/programs/{programId}')
  Future<RetrieveLoyaltyProgramResponse> retrieveLoyaltyProgram({
    @Path() required String programId,
  });

  @POST('/v2/loyalty/rewards/{reward_id}/redeem')
  Future<RedeemLoyaltyRewardResponse> redeemLoyaltyReward({
    @Path() required String rewardId,
    @Body() required RedeemLoyaltyRewardRequest request,
  });

  @POST('/v2/loyalty/rewards')
  Future<CreateLoyaltyRewardResponse> createLoyaltyReward({
    @Body() required CreateLoyaltyRewardRequest request,
  });

  @DELETE('/v2/loyalty/rewards/{reward_id}')
  Future<DeleteLoyaltyRewardResponse> deleteLoyaltyReward({
    @Path() required String rewardId,
  });

  @DELETE('/v2/loyalty/rewards/{reward_id}')
  Future<CalculateLoyaltyPointsResponse> calculateLoyaltyPoints({
    @Path() required String programId,
    @Body() CalculateLoyaltyPointsRequest request,
  });
}
