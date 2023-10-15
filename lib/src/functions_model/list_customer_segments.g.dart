// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_customer_segments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCustomerSegmentsResponse _$ListCustomerSegmentsResponseFromJson(
        Map<String, dynamic> json) =>
    ListCustomerSegmentsResponse(
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => CustomerSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCustomerSegmentsResponseToJson(
    ListCustomerSegmentsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('segments', instance.segments?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
