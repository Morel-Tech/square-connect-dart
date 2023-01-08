// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscriptions_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionsQuery _$SearchSubscriptionsQueryFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsQuery(
      filter: json['filter'] == null
          ? null
          : SearchSubscriptionsFilter.fromJson(
              json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchSubscriptionsQueryToJson(
    SearchSubscriptionsQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  return val;
}
