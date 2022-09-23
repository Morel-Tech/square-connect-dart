import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_account_mapping.g.dart';

@JsonSerializable()
class LoyaltyAccountMapping extends Equatable {
  const LoyaltyAccountMapping({
    required this.id,
    this.createdAt,
    this.phoneNumber,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyAccountMapping]
  factory LoyaltyAccountMapping.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountMappingFromJson(json);

  /// Converts a [LoyaltyAccountMapping] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyAccountMappingToJson(this);

  final String id;
  final DateTime? createdAt;
  final String? phoneNumber;

  @override
  List<Object?> get props => [id, createdAt, phoneNumber];
}
