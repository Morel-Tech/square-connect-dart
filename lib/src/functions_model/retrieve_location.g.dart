// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveLocationResponse _$RetrieveLocationResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveLocationResponse(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveLocationResponseToJson(
        RetrieveLocationResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'location': instance.location,
    };
