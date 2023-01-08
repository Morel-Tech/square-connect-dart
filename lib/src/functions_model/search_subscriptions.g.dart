// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscriptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionsRequest _$SearchSubscriptionsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsRequest(
      cursor: json['cursor'] as String?,
      limit: json['limit'] as int?,
      query: json['query'] == null
          ? null
          : SearchSubscriptionsQuery.fromJson(
              json['query'] as Map<String, dynamic>),
      include:
          (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchSubscriptionsRequestToJson(
    SearchSubscriptionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  writeNotNull('limit', instance.limit);
  writeNotNull('query', instance.query?.toJson());
  writeNotNull('include', instance.include);
  return val;
}

SearchSubscriptionsResponse _$SearchSubscriptionsResponseFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsResponse(
      cursor: json['cursor'] as String?,
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchSubscriptionsResponseToJson(
    SearchSubscriptionsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  writeNotNull(
      'subscriptions', instance.subscriptions?.map((e) => e.toJson()).toList());
  return val;
}
