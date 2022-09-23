// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account_expiring_point_deadline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccountExpiringPointDeadline
    _$LoyaltyAccountExpiringPointDeadlineFromJson(Map<String, dynamic> json) =>
        LoyaltyAccountExpiringPointDeadline(
          expiresAt: DateTime.parse(json['expires_at'] as String),
          points: json['points'] as int,
        );

Map<String, dynamic> _$LoyaltyAccountExpiringPointDeadlineToJson(
        LoyaltyAccountExpiringPointDeadline instance) =>
    <String, dynamic>{
      'expires_at': instance.expiresAt.toIso8601String(),
      'points': instance.points,
    };
