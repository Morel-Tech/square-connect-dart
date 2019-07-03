import 'dart:convert';


import 'package:http/http.dart';


class QueryParam {
  final String name;
  final String value;

  QueryParam(this.name, this.value):
  assert(name != null),
  assert(value != null)
  ;

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
  final String token;
  final String cursor;
  final String path;
  final List<QueryParam> queryParams;
  final RequestMethod method;
  final Map<String, dynamic> body;
  final Client client;
  final _baseUrl = 'https://connect.squareup.com';

  RequestObj({this.token, this.cursor, this.path, this.queryParams, this.method, this.body, this.client}): assert(method != null), assert(client != null);

  get url {
    if (this.cursor == null ) return _baseUrl + path + getParamListString(queryParams);
    return _baseUrl + path + getParamListString(queryParams) + '&cursor=${this.cursor}';
  }

  get headers {
    return {'Authorization': 'Bearer ' + this.token};
  }

  Future<dynamic> makeCall() async{
    switch (this.method) {
      case RequestMethod.get:
        print(this.url,);
        print(this.headers);
        return client.get(this.url, headers: this.headers);
      case RequestMethod.post:
        return client.post(this.url, headers: this.headers, body: json.encode(this.body));
      case RequestMethod.delete:
        return client.delete(url, headers: this.headers);
      case RequestMethod.put:
        return client.put(this.url, headers: this.headers, body: json.encode(this.body));
    }
  }
}

enum RequestMethod {
  post,
  get,
  put,
  delete
}