// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwapPlanRequest _$SwapPlanRequestFromJson(Map<String, dynamic> json) =>
    SwapPlanRequest(
      newPlanId: json['new_plan_id'] as String,
    );

Map<String, dynamic> _$SwapPlanRequestToJson(SwapPlanRequest instance) =>
    <String, dynamic>{
      'new_plan_id': instance.newPlanId,
    };

SwapPlanResponse _$SwapPlanResponseFromJson(Map<String, dynamic> json) =>
    SwapPlanResponse(
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

Map<String, dynamic> _$SwapPlanResponseToJson(SwapPlanResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription': instance.subscription?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };
