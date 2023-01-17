import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_gift_card_activities.g.dart';

@JsonSerializable()
class ListGiftCardActivitiesResponse extends SquareResponse {
  const ListGiftCardActivitiesResponse({
    this.giftCardActivities,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [ListGiftCardActivitiesResponse]
  factory ListGiftCardActivitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListGiftCardActivitiesResponseFromJson(json);

  /// Converts a [ListGiftCardActivitiesResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListGiftCardActivitiesResponseToJson(this);

  /// The requested gift card activities or an empty object if none are found.
  final List<GiftCardActivity>? giftCardActivities;

  /// When a response is truncated, it includes a cursor that you can use in
  /// a subsequent request to retrieve the next set of activities. If a
  /// cursor is not present, this is the final response.
  final String? cursor;

  @override
  List<Object?> get props => [giftCardActivities, cursor, errors];
}
