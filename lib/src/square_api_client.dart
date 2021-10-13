import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/functions_model/list_merchants.dart';

part 'square_api_client.g.dart';

@RestApi()
abstract class SquareApiClient {
  factory SquareApiClient({
    required String accessToken,
    String? apiVersion,
  }) =>
      _SquareApiClient(
        Dio(
          BaseOptions(
            baseUrl: 'https://connect.squareup.com',
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

  @POST('/v2/orders')
  Future<CreateOrderResponse> createOrder({
    @Body() CreateOrderRequest createOrderRequest,
  });

  @PUT('/v2/orders/{orderId}')
  Future<UpdateOrderResponse> updateOrder({
    @Body() UpdateOrderRequest updateOrderRequest,
    @Path() String orderId,
  });
}
