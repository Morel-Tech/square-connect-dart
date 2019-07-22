import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/labor/labor-enums-converter.dart';
import 'package:uuid/uuid.dart';

import '../shared-enums-converter.dart';

/// An object containing all methods for the Labor API. Retrieve this object with `SquareConnect.instance.laborApi`.
class LaborApi {
  final String _token;
  final Client _client;

  LaborApi(this._token, this._client);

  Future<CreateBreakTypeResponse> createBreakType({
    String idempotencyKey,
    String locationId,
    String name,
    String expectedDuration,
    bool isPaid,
  }) async {
    var body = Map<String, dynamic>();
    body['idempotency_key'] = idempotencyKey ?? Uuid().v4();

    var breakType = Map<String, dynamic>();
    if (locationId != null) breakType['location_id'] = locationId;
    if (name != null) breakType['break_name'] = name;
    if (expectedDuration != null)
      breakType['expected_duration'] = expectedDuration;
    if (isPaid != null) breakType['is_paid'] = isPaid;

    if (locationId != null ||
        name != null ||
        expectedDuration != null ||
        isPaid != null) {
      body['break_type'] = breakType;
    }

    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/break-types',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return CreateBreakTypeResponse.fromJson(json.decode(response.body));
  }

  Future<CreateShiftResponse> createShift({
    String idempotencyKey,
    String employeeId,
    String locationId,
    DateTime startAt,
    DateTime endAt,
    ShiftWage wage,
    List<Break> breaks,
    ShiftStatus status,
  }) async {
    var body = Map<String, dynamic>();
    body['idempotency_key'] = idempotencyKey ?? Uuid().v4();

    var shift = Map<String, dynamic>();
    if (employeeId != null) shift['employee_id'] = employeeId;
    if (locationId != null) shift['location_id'] = locationId;
    if (startAt != null) shift['start_at'] = startAt.toIso8601String();
    if (endAt != null) shift['end_at'] = endAt.toIso8601String();
    if (wage != null) shift['wage'] = wage.toJson();
    if (breaks != null)
      shift['breaks'] = breaks.map((item) => item.toJson()).toList();
    if (status != null) shift['status'] = getStringFromShiftStatus(status);

    if (employeeId != null ||
        locationId != null ||
        startAt != null ||
        endAt != null ||
        wage != null ||
        breaks != null ||
        status != null) {
      body['shift'] = shift;
    }

    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/shifts',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return CreateShiftResponse.fromJson(json.decode(response.body));
  }

  Future<DeleteBreakTypeResponse> deleteBreakType({
    String breakTypeId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/break-types/$breakTypeId',
      method: RequestMethod.delete,
      client: _client,
    );

    var response = await obj.makeCall();
    return DeleteBreakTypeResponse.fromJson(json.decode(response.body));
  }

  Future<DeleteShiftResponse> deleteShift({
    String shiftId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/shifts/$shiftId',
      method: RequestMethod.delete,
      client: _client,
    );

    var response = await obj.makeCall();
    return DeleteShiftResponse.fromJson(json.decode(response.body));
  }

  Future<GetBreakTypeResponse> getBreakType({
    String breakTypeId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/break-types/$breakTypeId',
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return GetBreakTypeResponse.fromJson(json.decode(response.body));
  }

  Future<GetEmployeeWageResponse> getEmployeeWage({
    String employeeWageId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/employee-wages/$employeeWageId',
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return GetEmployeeWageResponse.fromJson(json.decode(response.body));
  }

  Future<GetShiftResponse> getShift({
    String shiftId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/shifts/$shiftId',
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return GetShiftResponse.fromJson(json.decode(response.body));
  }

  Future<ListBreakTypesResponse> listBreakTypes({
    String locationId,
    int limit,
    String cursor,
  }) async {
    var queryParams = [
      if (locationId != null) QueryParam('location_id', locationId),
      if (limit != null) QueryParam('limit', limit.toString()),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
        token: _token,
        path: '/v2/labor/break-types',
        method: RequestMethod.get,
        client: _client,
        queryParams: queryParams);

    var response = await obj.makeCall();
    return ListBreakTypesResponse.fromJson(json.decode(response.body));
  }

  Future<ListEmployeeWagesResponse> listEmployeeWages({
    String employeeId,
    int limit,
    String cursor,
  }) async {
    var queryParams = [
      if (employeeId != null) QueryParam('employee_id', employeeId),
      if (limit != null) QueryParam('limit', limit.toString()),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
        token: _token,
        path: '/v2/labor/employee-wages',
        method: RequestMethod.get,
        client: _client,
        queryParams: queryParams);

    var response = await obj.makeCall();
    return ListEmployeeWagesResponse.fromJson(json.decode(response.body));
  }

  Future<ListWorkweekConfigsResponse> listWorkweekConfigs({
    int limit,
    String cursor,
  }) async {
    var queryParams = [
      if (limit != null) QueryParam('limit', limit.toString()),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
        token: _token,
        path: '/v2/labor/workweek-configs',
        method: RequestMethod.get,
        client: _client,
        queryParams: queryParams);

    var response = await obj.makeCall();
    return ListWorkweekConfigsResponse.fromJson(json.decode(response.body));
  }

  Future<SearchShiftsResponse> seachShifts({
    int limit,
    String cursor,
    SortOrder sortOrder,
    ShiftSortField sortField,
    List<String> locationIdFilter,
    List<String> employeeIdFilter,
    ShiftStatus statusFilter,
    TimeRange startFilter,
    TimeRange endFilter,
    ShiftWorkday shiftWorkdayFilter,
  }) async {
    var body = Map<String, dynamic>();
    if (limit != null) body['limit'] = limit;
    if (cursor != null) body['cursor'] = cursor;

    var query = Map<String, dynamic>();

    var sort = Map<String, dynamic>();
    if (sortOrder != null) sort['order'] = getStringFromSortOrder(sortOrder);
    if (sortField != null)
      sort['field'] = getStringFromShiftSortField(sortField);

    var filter = Map<String, dynamic>();
    if (locationIdFilter != null) filter['location_id'] = locationIdFilter;
    if (employeeIdFilter != null) filter['employee_id'] = employeeIdFilter;
    if (statusFilter != null)
      filter['status'] = getStringFromShiftStatus(statusFilter);
    if (startFilter != null) filter['start'] = startFilter.toJson();
    if (endFilter != null) filter['end'] = endFilter.toJson();
    if (shiftWorkdayFilter != null)
      filter['workday'] = shiftWorkdayFilter.toJson();

    if (sortOrder != null || sortField != null) query['sort'] = sort;

    if (locationIdFilter != null ||
        employeeIdFilter != null ||
        statusFilter != null ||
        startFilter != null ||
        endFilter != null ||
        shiftWorkdayFilter != null) query['filter'] = filter;

    if (sortOrder != null ||
        sortField != null ||
        locationIdFilter != null ||
        employeeIdFilter != null ||
        statusFilter != null ||
        startFilter != null ||
        endFilter != null ||
        shiftWorkdayFilter != null) body['query'] = query;

    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/shifts/search',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return SearchShiftsResponse.fromJson(json.decode(response.body));
  }

  Future<UpdateBreakTypeResponse> updateBreakType({
    String breakTypeId,
    String locationId,
    String name,
    String expectedDuration,
    bool isPaid,
  }) async {
    var body = Map<String, dynamic>();

    var breakType = Map<String, dynamic>();
    if (locationId != null) breakType['location_id'] = locationId;
    if (name != null) breakType['break_name'] = name;
    if (expectedDuration != null)
      breakType['expected_duration'] = expectedDuration;
    if (isPaid != null) breakType['is_paid'] = isPaid;

    if (locationId != null ||
        name != null ||
        expectedDuration != null ||
        isPaid != null) {
      body['break_type'] = breakType;
    }

    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/break-types/$breakTypeId',
      method: RequestMethod.put,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return UpdateBreakTypeResponse.fromJson(json.decode(response.body));
  }

  Future<UpdateShiftResponse> updateShift({
    String shiftId,
    String employeeId,
    String locationId,
    DateTime startAt,
    DateTime endAt,
    ShiftWage wage,
    List<Break> breaks,
    ShiftStatus status,
  }) async {
    var body = Map<String, dynamic>();

    var shift = Map<String, dynamic>();
    if (employeeId != null) shift['employee_id'] = employeeId;
    if (locationId != null) shift['location_id'] = locationId;
    if (startAt != null) shift['start_at'] = startAt.toIso8601String();
    if (endAt != null) shift['end_at'] = endAt.toIso8601String();
    if (wage != null) shift['wage'] = wage.toJson();
    if (breaks != null)
      shift['breaks'] = breaks.map((item) => item.toJson()).toList();
    if (status != null) shift['status'] = getStringFromShiftStatus(status);

    if (employeeId != null ||
        locationId != null ||
        startAt != null ||
        endAt != null ||
        wage != null ||
        breaks != null ||
        status != null) {
      body['shift'] = shift;
    }

    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/shifts/$shiftId',
      method: RequestMethod.put,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return UpdateShiftResponse.fromJson(json.decode(response.body));
  }

  Future<UpdateWorkweekConfigResponse> updateWorkweekConfig({
    String workweekConfigId,
    DayOfWeek startOfWeek,
    SquareTimeOfDay startOfDayLocalTime,
  }) async {
    var body = Map<String, dynamic>();

    var workweekConfig = Map<String, dynamic>();
    if (startOfWeek != null)
      workweekConfig['start_of_week'] = getStringFromDayOfWeek(startOfWeek);
    if (startOfDayLocalTime != null)
      workweekConfig['start_of_day_local_time'] =
          startOfDayLocalTime.toString();

    if (startOfWeek != null || startOfDayLocalTime != null) {
      body['workweek_config'] = workweekConfig;
    }

    var obj = RequestObj(
      token: _token,
      path: '/v2/labor/workweek-configs/$workweekConfigId',
      method: RequestMethod.put,
      client: _client,
      body: body,
    );

    var response = await obj.makeCall();
    return UpdateWorkweekConfigResponse.fromJson(json.decode(response.body));
  }
}
