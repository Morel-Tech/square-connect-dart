// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_customer_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCustomerGroupsResponse _$ListCustomerGroupsResponseFromJson(
        Map<String, dynamic> json) =>
    ListCustomerGroupsResponse(
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => CustomerGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCustomerGroupsResponseToJson(
    ListCustomerGroupsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('groups', instance.groups?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
