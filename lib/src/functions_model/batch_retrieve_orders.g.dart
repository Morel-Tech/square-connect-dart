// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_retrieve_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchRetrieveOrdersRequest _$BatchRetrieveOrdersRequestFromJson(
        Map<String, dynamic> json) =>
    BatchRetrieveOrdersRequest();

Map<String, dynamic> _$BatchRetrieveOrdersRequestToJson(
        BatchRetrieveOrdersRequest instance) =>
    <String, dynamic>{};

BatchRetrieveOrdersResponse _$BatchRetrieveOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    BatchRetrieveOrdersResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BatchRetrieveOrdersResponseToJson(
    BatchRetrieveOrdersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  return val;
}
