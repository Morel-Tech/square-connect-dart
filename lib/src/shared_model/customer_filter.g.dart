// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFilter _$CustomerFilterFromJson(Map<String, dynamic> json) =>
    CustomerFilter(
      createdAt: json['created_at'] == null
          ? null
          : TimeRange.fromJson(json['created_at'] as Map<String, dynamic>),
      creationSource: json['creation_source'] == null
          ? null
          : CustomerCreationSourceFilter.fromJson(
              json['creation_source'] as Map<String, dynamic>),
      emailAddress: json['email_address'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['email_address'] as Map<String, dynamic>),
      groupIds: json['group_ids'] == null
          ? null
          : FilterValue.fromJson(json['group_ids'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['phone_number'] as Map<String, dynamic>),
      referenceId: json['reference_id'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['reference_id'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : TimeRange.fromJson(json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerFilterToJson(CustomerFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('creation_source', instance.creationSource?.toJson());
  writeNotNull('email_address', instance.emailAddress?.toJson());
  writeNotNull('group_ids', instance.groupIds?.toJson());
  writeNotNull('phone_number', instance.phoneNumber?.toJson());
  writeNotNull('reference_id', instance.referenceId?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}
