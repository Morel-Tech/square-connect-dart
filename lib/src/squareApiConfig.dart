import 'dart:convert';


import 'package:http/http.dart' as http;


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

String getParamListString(List<QueryParam> list) {
  if (list.length == 0 || list == null) return '';
  return '?${list.map((param) => param.toString()).join('&')}';
}

class RequestObj {
  final String token;
  final String cursor;
  final String path;
  final List<QueryParam> queryParams;
  final RequestMethod method;
  final Map<String, dynamic> body;
  final http.Client client;
  final _baseUrl = 'https://connect.squareup.com';

  RequestObj({this.token, this.cursor, this.path, this.queryParams, this.method, this.body, this.client = http.IOClient}): assert(method != null);

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