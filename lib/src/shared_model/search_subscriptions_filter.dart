import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_subscriptions_filter.g.dart';

@JsonSerializable()
class SearchSubscriptionsFilter extends Equatable {
  const SearchSubscriptionsFilter({
    this.customerIds,
    this.locationIds,
    this.sourceNames,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SearchSubscriptionsFilter]
  factory SearchSubscriptionsFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionsFilterFromJson(json);

  /// Converts a [SearchSubscriptionsFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SearchSubscriptionsFilterToJson(this);

  final List<String>? customerIds;
  final List<String>? locationIds;
  final List<String>? sourceNames;

  @override
  List<Object?> get props => [
        customerIds,
        locationIds,
        sourceNames,
      ];
}
