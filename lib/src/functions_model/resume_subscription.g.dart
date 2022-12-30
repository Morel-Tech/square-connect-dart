// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResumeSubscriptionRequest _$ResumeSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    ResumeSubscriptionRequest(
      resumeChangeTiming: json['resume_change_timing'] as String?,
      resumeEffectiveDate: json['resume_effective_date'] as String?,
    );

Map<String, dynamic> _$ResumeSubscriptionRequestToJson(
        ResumeSubscriptionRequest instance) =>
    <String, dynamic>{
      'resume_effective_date': instance.resumeEffectiveDate,
      'resume_change_timing': instance.resumeChangeTiming,
    };

ResumeSubscriptionResponse _$ResumeSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    ResumeSubscriptionResponse(
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => SubscriptionAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResumeSubscriptionResponseToJson(
        ResumeSubscriptionResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };
