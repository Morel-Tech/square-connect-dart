// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListLocationsResponse _$ListLocationsResponseFromJson(
        Map<String, dynamic> json) =>
    ListLocationsResponse(
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListLocationsResponseToJson(
        ListLocationsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'locations': instance.locations,
    };
