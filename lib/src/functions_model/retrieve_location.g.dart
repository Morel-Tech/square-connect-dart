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
    RetrieveLocationResponse instance) {
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
