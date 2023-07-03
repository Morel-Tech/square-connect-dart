// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccount _$LoyaltyAccountFromJson(Map<String, dynamic> json) =>
    LoyaltyAccount(
      programId: json['program_id'] as String,
      id: json['id'] as String?,
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

Map<String, dynamic> _$LoyaltyAccountToJson(LoyaltyAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['program_id'] = instance.programId;
  writeNotNull('balance', instance.balance);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('enrolled_at', instance.enrolledAt?.toIso8601String());
  writeNotNull('expiring_point_deadlines',
      instance.expiringPointDeadlines?.map((e) => e.toJson()).toList());
  writeNotNull('lifetime_points', instance.lifetimePoints);
  writeNotNull('mapping', instance.mapping?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  return val;
}
