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
    UpdateLocationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['location'] = instance.location.toJson();
  return val;
}

UpdateLocationRequest _$UpdateLocationRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateLocationRequest(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateLocationRequestToJson(
        UpdateLocationRequest instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
    };
