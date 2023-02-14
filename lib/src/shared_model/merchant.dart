import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'merchant.g.dart';

@JsonSerializable()
class Merchant extends Equatable {
  const Merchant({
    this.id,
    required this.country,
    this.businessName,
    this.currency,
    this.languageCode,
    this.mainLocationId,
    this.status,
  });

  /// Converts a [Map] to an [Merchant]
  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);

  /// Converts a [Merchant] to a [Map]
  Map<String, dynamic> toJson() => _$MerchantToJson(this);

  final String? id;
  final String country;
  final String? businessName;
  final String? currency;
  final String? languageCode;
  final String? mainLocationId;
  final String? status;

  @override
  List<Object?> get props {
    return [
      id,
      country,
      businessName,
      currency,
      languageCode,
      mainLocationId,
      status,
    ];
  }
}
