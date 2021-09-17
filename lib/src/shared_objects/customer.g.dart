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
      birthday: json['birthday'] as String?,
      companyName: json['companyName'] as String?,
      createdAt: json['createdAt'] as String?,
      creationSource: _$enumDecodeNullable(
          _$CustomerCreationSourceEnumMap, json['creationSource']),
      emailAddress: json['emailAddress'] as String?,
      familyName: json['familyName'] as String?,
      givenName: json['givenName'] as String?,
      groupIds: (json['groupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nickname: json['nickname'] as String?,
      note: json['note'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      preferences: json['preferences'] == null
          ? null
          : CustomerPreferences.fromJson(
              json['preferences'] as Map<String, dynamic>),
      referenceId: json['referenceId'] as String?,
      segmentIds: (json['segmentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedAt: json['updatedAt'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'birthday': instance.birthday,
      'companyName': instance.companyName,
      'createdAt': instance.createdAt,
      'creationSource':
          _$CustomerCreationSourceEnumMap[instance.creationSource],
      'emailAddress': instance.emailAddress,
      'familyName': instance.familyName,
      'givenName': instance.givenName,
      'groupIds': instance.groupIds,
      'nickname': instance.nickname,
      'note': instance.note,
      'phoneNumber': instance.phoneNumber,
      'preferences': instance.preferences,
      'referenceId': instance.referenceId,
      'segmentIds': instance.segmentIds,
      'updatedAt': instance.updatedAt,
      'version': instance.version,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
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
