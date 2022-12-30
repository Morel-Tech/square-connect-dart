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

Map<String, dynamic> _$SubscriptionActionToJson(SubscriptionAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SubscriptionActionTypeEnumMap[instance.type]!,
      'effective_date': instance.effectiveDate,
      'new_plan_id': instance.newPlanId,
    };

const _$SubscriptionActionTypeEnumMap = {
  SubscriptionActionType.cancel: 'CANCEL',
  SubscriptionActionType.pause: 'PAUSE',
  SubscriptionActionType.resume: 'RESUME',
  SubscriptionActionType.swapPlan: 'SWAP_PLAN',
};
