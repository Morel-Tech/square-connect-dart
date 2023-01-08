// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      companyName: json['company_name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      creationSource: $enumDecodeNullable(
          _$CustomerCreationSourceEnumMap, json['creation_source']),
      emailAddress: json['email_address'] as String?,
      familyName: json['family_name'] as String?,
      givenName: json['given_name'] as String?,
      groupIds: (json['group_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nickname: json['nickname'] as String?,
      note: json['note'] as String?,
      phoneNumber: json['phone_number'] as String?,
      preferences: json['preferences'] == null
          ? null
          : CustomerPreferences.fromJson(
              json['preferences'] as Map<String, dynamic>),
      referenceId: json['reference_id'] as String?,
      segmentIds: (json['segment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('birthday', instance.birthday?.toIso8601String());
  writeNotNull('company_name', instance.companyName);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('creation_source',
      _$CustomerCreationSourceEnumMap[instance.creationSource]);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('family_name', instance.familyName);
  writeNotNull('given_name', instance.givenName);
  writeNotNull('group_ids', instance.groupIds);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('note', instance.note);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('preferences', instance.preferences?.toJson());
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('segment_ids', instance.segmentIds);
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('version', instance.version);
  return val;
}

const _$CustomerCreationSourceEnumMap = {
  CustomerCreationSource.other: 'OTHER',
  CustomerCreationSource.appointments: 'APPOINTMENTS',
  CustomerCreationSource.coupon: 'COUPON',
  CustomerCreationSource.deletionRecovery: 'DELETION_RECOVERY',
  CustomerCreationSource.directory: 'DIRECTORY',
  CustomerCreationSource.egifting: 'EGIFTING',
  CustomerCreationSource.emailCollection: 'EMAIL_COLLECTION',
  CustomerCreationSource.feedback: 'FEEDBACK',
  CustomerCreationSource.import: 'IMPORT',
  CustomerCreationSource.invoices: 'INVOICES',
  CustomerCreationSource.loyalty: 'LOYALTY',
  CustomerCreationSource.marketing: 'MARKETING',
  CustomerCreationSource.merge: 'MERGE',
  CustomerCreationSource.onlineStore: 'ONLINE_STORE',
  CustomerCreationSource.instantProfile: 'INSTANT_PROFILE',
  CustomerCreationSource.terminal: 'TERMINAL',
  CustomerCreationSource.thirdParty: 'THIRD_PARTY',
  CustomerCreationSource.thirdPartyImport: 'THIRD_PARTY_IMPORT',
  CustomerCreationSource.unmergeRecovery: 'UNMERGE_RECOVERY',
};
