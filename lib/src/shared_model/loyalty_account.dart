import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_account.g.dart';

@JsonSerializable()
class LoyaltyAccount extends Equatable {
  const LoyaltyAccount({
    required this.programId,
    this.id,
    this.balance,
    this.createdAt,
    this.customerId,
    this.enrolledAt,
    this.expiringPointDeadlines,
    this.lifetimePoints,
    this.mapping,
    this.updatedAt,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyAccount]
  factory LoyaltyAccount.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountFromJson(json);

  /// Converts a [LoyaltyAccount] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyAccountToJson(this);

  final String? id;
  final String programId;
  final int? balance;
  final DateTime? createdAt;
  final String? customerId;
  final DateTime? enrolledAt;
  final List<LoyaltyAccountExpiringPointDeadline>? expiringPointDeadlines;
  final int? lifetimePoints;
  final LoyaltyAccountMapping? mapping;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        programId,
        balance,
        createdAt,
        customerId,
        enrolledAt,
        expiringPointDeadlines,
        lifetimePoints,
        mapping,
        updatedAt,
      ];
}
