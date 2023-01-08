// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCustomersResponse _$ListCustomersResponseFromJson(
        Map<String, dynamic> json) =>
    ListCustomersResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$ListCustomersResponseToJson(
    ListCustomersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull(
      'customers', instance.customers?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
