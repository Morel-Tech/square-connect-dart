// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_unit_description_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandardUnitDescriptionGroup _$StandardUnitDescriptionGroupFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescriptionGroup(
      standardUnitDescriptions:
          (json['standard_unit_descriptions'] as List<dynamic>?)
              ?.map((e) =>
                  StandardUnitDescription.fromJson(e as Map<String, dynamic>))
              .toList(),
      languageCode: json['language_code'] as String?,
    );

Map<String, dynamic> _$StandardUnitDescriptionGroupToJson(
    StandardUnitDescriptionGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('standard_unit_descriptions',
      instance.standardUnitDescriptions?.map((e) => e.toJson()).toList());
  writeNotNull('language_code', instance.languageCode);
  return val;
}
