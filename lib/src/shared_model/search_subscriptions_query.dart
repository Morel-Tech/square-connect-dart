import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_subscriptions_query.g.dart';

@JsonSerializable()
class SearchSubscriptionsQuery extends Equatable {
  const SearchSubscriptionsQuery({
    this.filter,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchSubscriptionsQuery]
  factory SearchSubscriptionsQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionsQueryFromJson(json);

  /// Converts a [SearchSubscriptionsQuery] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchSubscriptionsQueryToJson(this);

  final SearchSubscriptionsFilter? filter;

  @override
  List<Object?> get props => [filter];
}
