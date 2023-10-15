// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerGroupRequest _$CreateCustomerGroupRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerGroupRequest(
      group: json['group'] == null
          ? null
          : CustomerGroup.fromJson(json['group'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String?,
    );

Map<String, dynamic> _$CreateCustomerGroupRequestToJson(
    CreateCustomerGroupRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('group', instance.group?.toJson());
  return val;
}

CreateCustomerGroupResponse _$CreateCustomerGroupResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerGroupResponse(
      group: json['group'] == null
          ? null
          : CustomerGroup.fromJson(json['group'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateCustomerGroupResponseToJson(
    CreateCustomerGroupResponse instance) {
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
