// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateLocationResponse _$UpdateLocationResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateLocationResponse(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateLocationResponseToJson(
        UpdateLocationResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'location': instance.location.toJson(),
    };

UpdateLocationInput _$UpdateLocationInputFromJson(Map<String, dynamic> json) =>
    UpdateLocationInput(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateLocationInputToJson(
        UpdateLocationInput instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
    };
