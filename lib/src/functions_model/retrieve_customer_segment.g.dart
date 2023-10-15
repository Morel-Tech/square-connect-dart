// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_customer_segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCustomerSegmentResponse _$RetrieveCustomerSegmentResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCustomerSegmentResponse(
      segment: json['segment'] == null
          ? null
          : CustomerSegment.fromJson(json['segment'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveCustomerSegmentResponseToJson(
    RetrieveCustomerSegmentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('segment', instance.segment?.toJson());
  return val;
}
