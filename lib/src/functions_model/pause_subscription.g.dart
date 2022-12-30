// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pause_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PauseSubscriptionRequest _$PauseSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    PauseSubscriptionRequest(
      pauseEffectiveDate: json['pause_effective_date'] as String?,
      pauseCycleDuration: json['pause_cycle_duration'] as int?,
      pauseReason: json['pause_reason'] as String?,
      resumeChangeTiming: $enumDecodeNullable(
          _$ChangeTimingEnumMap, json['resume_change_timing']),
      resumeEffectiveDate: json['resume_effective_date'] as String?,
    );

Map<String, dynamic> _$PauseSubscriptionRequestToJson(
        PauseSubscriptionRequest instance) =>
    <String, dynamic>{
      'pause_effective_date': instance.pauseEffectiveDate,
      'pause_cycle_duration': instance.pauseCycleDuration,
      'resume_effective_date': instance.resumeEffectiveDate,
      'resume_change_timing':
          _$ChangeTimingEnumMap[instance.resumeChangeTiming],
      'pause_reason': instance.pauseReason,
    };

const _$ChangeTimingEnumMap = {
  ChangeTiming.immediate: 'IMMEDIATE',
  ChangeTiming.endOfBillingCycle: 'END_OF_BILLING_CYCLE',
};

PauseSubscriptionResponse _$PauseSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    PauseSubscriptionResponse(
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => SubscriptionAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PauseSubscriptionResponseToJson(
        PauseSubscriptionResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };
