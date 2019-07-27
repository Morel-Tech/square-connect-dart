import 'dart:convert';

import 'package:http/http.dart';

class QueryParam {
  final String name;
  final String value;

  QueryParam(this.name, this.value)
      : assert(name != null),
        assert(value != null);

  String toString() {
    return '$name=$value';
  }
}

/// Converts a [List] of [QueryParam]s to a [String] for to be placed at the end of a url
String getParamListString(List<QueryParam> list) {
  if (list == null || list.length == 0) return '';
  return '?${list.map((param) => param.toString()).join('&')}';
}

/// Helper class that contains the logic to make the actual calls for Square APIs.
class RequestObj {
  String token;
  final String refreshToken;
  final String path;
  final List<QueryParam> queryParams;
  final RequestMethod method;
  final Map<String, dynamic> body;
  final Client client;
  final String clientId;
  final String clientSecret;
  final _baseUrl = 'https://connect.squareup.com';

  RequestObj(
      {this.token,
      this.path,
      this.queryParams,
      this.method,
      this.body,
      this.client,
      this.refreshToken,
      this.clientId,
      this.clientSecret})
      : assert(method != null),
        assert(client != null);

  get url {
    return _baseUrl + path + getParamListString(queryParams);
  }

  get headers {
    return {'Authorization': 'Bearer ' + this.token};
  }

  Future<Response> makeCall() async {
    if (refreshToken != null) {
      var resp = await client.post('$_baseUrl/oauth2/token',
          body: json.encode({
            'client_id': clientId,
            'client_secret': clientSecret,
            'grant_type': 'refresh_token',
            'refresh_token': refreshToken,
          }));
      this.token = json.decode(resp.body)['access_token'];
    }

    switch (this.method) {
      case RequestMethod.get:
        return client.get(this.url, headers: this.headers);
      case RequestMethod.post:
        return client.post(this.url,
            headers: this.headers, body: json.encode(this.body));
      case RequestMethod.delete:
        return client.delete(url, headers: this.headers);
      case RequestMethod.put:
        return client.put(this.url,
            headers: this.headers, body: json.encode(this.body));
      default:
        throw ArgumentError('Method is unsuported');
    }
  }
}

enum RequestMethod { post, get, put, delete }

bool xor(bool a, bool b) {
  return (!a && b) || (a && !b);
}

Duration parseDuration(String formattedString) {
  if (RegExp(r"P([0-9]+Y)?([0-9]+M)?([0-9]+D)?T([0-9]+H)?([0-9]+M)?([0-9]+S)?")
      .hasMatch(formattedString)) {
    int year, month, day, hour, minute, second;
    // is formatted properly
    var ans = formattedString.substring(1);
    if (RegExp(r"[0-9]+Y.*T").hasMatch(ans)) {
      // contains year
      year = int.parse(ans.substring(0, ans.indexOf('Y')));
      ans = ans.substring(ans.indexOf('Y') + 1);
    }
    if (RegExp(r"[0-9]+M.*T").hasMatch(ans)) {
      // contains month
      month = int.parse(ans.substring(0, ans.indexOf('M')));
      ans = ans.substring(ans.indexOf('M') + 1);
    }
    if (RegExp(r"[0-9]+D").hasMatch(ans)) {
      // contains day
      day = int.parse(ans.substring(0, ans.indexOf('D')));
      ans = ans.substring(ans.indexOf('D') + 1);
    }
    ans = ans.substring(1);
    if (RegExp(r"[0-9]+H").hasMatch(ans)) {
      // contains hour
      hour = int.parse(ans.substring(0, ans.indexOf('H')));
      ans = ans.substring(ans.indexOf('H') + 1);
    }
    if (RegExp(r"[0-9]+M").hasMatch(ans)) {
      // contains minute
      minute = int.parse(ans.substring(0, ans.indexOf('M')));
      ans = ans.substring(ans.indexOf('M') + 1);
    }
    if (RegExp(r"[0-9]+S").hasMatch(ans)) {
      // contains second
      second = int.parse(ans.substring(0, ans.indexOf('S')));
      ans = ans.substring(ans.indexOf('S') + 1);
    }
    return Duration(
        days: (((year ?? 0) * 365) + ((month ?? 0) * 30) + (day ?? 0)),
        hours: hour ?? 0,
        minutes: minute ?? 0,
        seconds: second ?? 0);
  } else {
    throw ArgumentError();
  }
}
