// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_token_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveTokenStatusResponse _$RetrieveTokenStatusResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveTokenStatusResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveTokenStatusResponseToJson(
    RetrieveTokenStatusResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  return val;
}
