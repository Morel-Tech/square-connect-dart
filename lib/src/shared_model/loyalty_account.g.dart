// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccount _$LoyaltyAccountFromJson(Map<String, dynamic> json) =>
    LoyaltyAccount(
      id: json['id'] as String,
      programId: json['program_id'] as String,
      balance: json['balance'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      customerId: json['customer_id'] as String?,
      enrolledAt: json['enrolled_at'] == null
          ? null
          : DateTime.parse(json['enrolled_at'] as String),
      expiringPointDeadlines:
          (json['expiring_point_deadlines'] as List<dynamic>?)
              ?.map((e) => LoyaltyAccountExpiringPointDeadline.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      lifetimePoints: json['lifetime_points'] as int?,
      mapping: json['mapping'] == null
          ? null
          : LoyaltyAccountMapping.fromJson(
              json['mapping'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LoyaltyAccountToJson(LoyaltyAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'program_id': instance.programId,
      'balance': instance.balance,
      'created_at': instance.createdAt?.toIso8601String(),
      'customer_id': instance.customerId,
      'enrolled_at': instance.enrolledAt?.toIso8601String(),
      'expiring_point_deadlines':
          instance.expiringPointDeadlines?.map((e) => e.toJson()).toList(),
      'lifetime_points': instance.lifetimePoints,
      'mapping': instance.mapping?.toJson(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
