// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLocationResponse _$CreateLocationResponseFromJson(
        Map<String, dynamic> json) =>
    CreateLocationResponse(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateLocationResponseToJson(
        CreateLocationResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'location': instance.location.toJson(),
    };

CreateLocationRequest _$CreateLocationRequestFromJson(
        Map<String, dynamic> json) =>
    CreateLocationRequest(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateLocationRequestToJson(
        CreateLocationRequest instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
    };
