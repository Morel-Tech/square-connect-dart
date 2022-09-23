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
        RetrieveLoyaltyProgramResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'program': instance.program?.toJson(),
    };
