
const baseUrl = 'https://connect.squareup.com/v2';

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
  if (list.length == 0) return '';
  return '?${list.map((param) => param.toString()).join('&')}';
}