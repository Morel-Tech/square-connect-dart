// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      id: json['id'] as String,
      subscriptionEventType: $enumDecode(
          _$SubscriptionEventSubscriptionEventTypeEnumMap,
          json['subscription_event_type']),
      effectiveDate: json['effective_date'] as String,
      planId: json['plan_id'] as String,
      info: json['info'] == null
          ? null
          : SubscriptionEventInfo.fromJson(
              json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'subscription_event_type': _$SubscriptionEventSubscriptionEventTypeEnumMap[
        instance.subscriptionEventType]!,
    'effective_date': instance.effectiveDate,
    'plan_id': instance.planId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('info', instance.info?.toJson());
  return val;
}

const _$SubscriptionEventSubscriptionEventTypeEnumMap = {
  SubscriptionEventSubscriptionEventType.startSubscription:
      'START_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.planChange: 'PLAN_CHANGE',
  SubscriptionEventSubscriptionEventType.stopSubscription: 'STOP_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.deactivateSubscription:
      'DEACTIVATE_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.resumeSubscription:
      'RESUME_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.pauseSubscription:
      'PAUSE_SUBSCRIPTION',
};
