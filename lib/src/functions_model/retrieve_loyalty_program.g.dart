// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_loyalty_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveLoyaltyProgramResponse _$RetrieveLoyaltyProgramResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveLoyaltyProgramResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      program: json['program'] == null
          ? null
          : LoyaltyProgram.fromJson(json['program'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RetrieveLoyaltyProgramResponseToJson(
    RetrieveLoyaltyProgramResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('program', instance.program?.toJson());
  return val;
}
