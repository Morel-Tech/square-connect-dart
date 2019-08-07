import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/employees/employees-enums-converter.dart';
import 'package:square_connect/src/helper-classes.dart';

/// An object containing all methods for the Employees API. Retrieve this object with `SquareConnect.instance.employeesApi`.
class EmployeesApi {
  final String _token;
  final Client _client;
  final String _refreshToken;
  final String _clientId;
  final String _clientSecret;

  EmployeesApi(this._token, this._client, this._refreshToken, this._clientId,
      this._clientSecret);

  /// Gets a list of [Employee] objects for a business.
  Future<ListEmployeesResponse> listEmployees({
    String locationId,
    EmployeeStatus status,
    int limit,
    String cursor,
  }) async {
    List<QueryParam> queryParams = [
      if (locationId != null) QueryParam('location_id', locationId),
      if (status != null)
        QueryParam('status', getStringFromEmployeeStatus(status)),
      if (limit != null) QueryParam('limit', limit.toString()),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/employees',
      method: RequestMethod.get,
      queryParams: queryParams,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return ListEmployeesResponse.fromJson(json.decode(response.body));
  }

  /// Gets an [Employee] from Employee Id.
  Future<RetrieveEmployeeResponse> retrieveEmployee({
    String employeeId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/employees/$employeeId',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return RetrieveEmployeeResponse.fromJson(json.decode(response.body));
  }
}
