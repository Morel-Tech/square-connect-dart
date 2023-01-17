// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_gift_card_activities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListGiftCardActivitiesResponse _$ListGiftCardActivitiesResponseFromJson(
        Map<String, dynamic> json) =>
    ListGiftCardActivitiesResponse(
      giftCardActivities: (json['gift_card_activities'] as List<dynamic>?)
          ?.map((e) => GiftCardActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListGiftCardActivitiesResponseToJson(
    ListGiftCardActivitiesResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('gift_card_activities',
      instance.giftCardActivities?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
