// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCustomerGroupRequest _$UpdateCustomerGroupRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerGroupRequest(
      group: json['group'] == null
          ? null
          : CustomerGroup.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCustomerGroupRequestToJson(
    UpdateCustomerGroupRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group?.toJson());
  return val;
}

UpdateCustomerGroupResponse _$UpdateCustomerGroupResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerGroupResponse(
      group: json['group'] == null
          ? null
          : CustomerGroup.fromJson(json['group'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateCustomerGroupResponseToJson(
    UpdateCustomerGroupResponse instance) {
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
