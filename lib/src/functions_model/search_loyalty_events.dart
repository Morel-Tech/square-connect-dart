import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_loyalty_events.g.dart';

@JsonSerializable()
class SearchLoyaltyEventsRequest extends Equatable {
  const SearchLoyaltyEventsRequest({
    this.query,
    this.limit,
    this.cursor,
  });

  /// Converts a [Map] to an [SearchLoyaltyEventsRequest]
  factory SearchLoyaltyEventsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyEventsRequestFromJson(json);

  /// Converts a [SearchLoyaltyEventsRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SearchLoyaltyEventsRequestToJson(this);

  final LoyaltyEventQuery? query;
  final int? limit;
  final String? cursor;

  @override
  List<Object?> get props => [query, limit, cursor];
}

@JsonSerializable()
class SearchLoyaltyEventsResponse extends SquareResponse {
  const SearchLoyaltyEventsResponse({
    this.events,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [SearchLoyaltyEventsResponse]
  factory SearchLoyaltyEventsResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyEventsResponseFromJson(json);

  /// Converts a [SearchLoyaltyEventsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchLoyaltyEventsResponseToJson(this);

  final List<LoyaltyEvent>? events;
  final String? cursor;

  @override
  List<Object?> get props => [errors, events, cursor];
}
