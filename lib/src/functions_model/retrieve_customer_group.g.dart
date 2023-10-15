// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_customer_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCustomerGroupResponse _$RetrieveCustomerGroupResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCustomerGroupResponse(
      group: json['group'] == null
          ? null
          : CustomerGroup.fromJson(json['group'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveCustomerGroupResponseToJson(
    RetrieveCustomerGroupResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('group', instance.group?.toJson());
  return val;
}
