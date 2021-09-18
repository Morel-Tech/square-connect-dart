import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:square_connect/square_connect.dart';

part 'square_api_client.g.dart';

@RestApi()
abstract class SquareApiClient {
  factory SquareApiClient({
    Dio? client,
    String? accessToken,
    String? apiVersion,
  }) {
    assert(
      client != null && accessToken != null,
      'If client is null, accessToken must be provided',
    );
    return _SquareApiClient(
      Dio(
        BaseOptions(
          baseUrl: 'https://connect.squareup.com',
          headers: <String, dynamic>{
            if (accessToken != null) 'Authorization': 'Bearer $accessToken',
            if (apiVersion != null) 'Square-Version': apiVersion,
          },
          contentType: 'application/json',
          responseType: ResponseType.json,
        ),
      ),
    );
  }

  @GET('/v2/locations')
  Future<List<Location>> listLocations();

  @GET('/v2/locations/{locationId}')
  Future<Location> retrieveLocation(@Path() String locationId);

  @POST('/v2/locations')
  Future<Location> createLocation(@Body() Location location);

  @PUT('v2/locations/{locationId}')
  Future<Location> updateLocation(
    @Path() String LocationId,
    @Body() Location location,
  );
}
