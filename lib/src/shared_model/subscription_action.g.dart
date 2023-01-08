// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionAction _$SubscriptionActionFromJson(Map<String, dynamic> json) =>
    SubscriptionAction(
      id: json['id'] as String,
      type: $enumDecode(_$SubscriptionActionTypeEnumMap, json['type']),
      effectiveDate: json['effective_date'] as String?,
      newPlanId: json['new_plan_id'] as String?,
    );

Map<String, dynamic> _$SubscriptionActionToJson(SubscriptionAction instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': _$SubscriptionActionTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effective_date', instance.effectiveDate);
  writeNotNull('new_plan_id', instance.newPlanId);
  return val;
}

const _$SubscriptionActionTypeEnumMap = {
  SubscriptionActionType.cancel: 'CANCEL',
  SubscriptionActionType.pause: 'PAUSE',
  SubscriptionActionType.resume: 'RESUME',
  SubscriptionActionType.swapPlan: 'SWAP_PLAN',
};
