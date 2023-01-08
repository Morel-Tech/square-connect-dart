// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCustomersRequest _$SearchCustomersRequestFromJson(
        Map<String, dynamic> json) =>
    SearchCustomersRequest(
      cursor: json['cursor'] as String?,
      limit: json['limit'] as int?,
      query: CustomerQuery.fromJson(json['query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchCustomersRequestToJson(
    SearchCustomersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  writeNotNull('limit', instance.limit);
  val['query'] = instance.query.toJson();
  return val;
}

SearchCustomersResponse _$SearchCustomersResponseFromJson(
        Map<String, dynamic> json) =>
    SearchCustomersResponse(
      cursor: json['cursor'] as String?,
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchCustomersResponseToJson(
    SearchCustomersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customers', instance.customers?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
