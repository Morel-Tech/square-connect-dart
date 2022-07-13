// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_creation_source_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerCreationSourceFilter _$CustomerCreationSourceFilterFromJson(
        Map<String, dynamic> json) =>
    CustomerCreationSourceFilter(
      rule: $enumDecode(_$CustomerInclusionExclusionEnumMap, json['rule']),
      values: (json['values'] as List<dynamic>)
          .map((e) => $enumDecode(_$CustomerCreationSourceEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$CustomerCreationSourceFilterToJson(
        CustomerCreationSourceFilter instance) =>
    <String, dynamic>{
      'rule': _$CustomerInclusionExclusionEnumMap[instance.rule]!,
      'values': instance.values
          .map((e) => _$CustomerCreationSourceEnumMap[e]!)
          .toList(),
    };

const _$CustomerInclusionExclusionEnumMap = {
  CustomerInclusionExclusion.include: 'INCLUE',
  CustomerInclusionExclusion.exclude: 'EXCLUDE',
};

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
