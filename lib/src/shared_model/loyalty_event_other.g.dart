// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_other.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventOther _$LoyaltyEventOtherFromJson(Map<String, dynamic> json) =>
    LoyaltyEventOther(
      loyaltyProgramId: json['loyalty_program_id'] as String,
      points: json['points'] as int,
    );

Map<String, dynamic> _$LoyaltyEventOtherToJson(LoyaltyEventOther instance) =>
    <String, dynamic>{
      'loyalty_program_id': instance.loyaltyProgramId,
      'points': instance.points,
    };
