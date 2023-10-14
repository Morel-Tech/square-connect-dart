import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'modifier_location_overrides.g.dart';

@JsonSerializable()
class ModifierLocationOverrides extends Equatable {
  const ModifierLocationOverrides({
    this.locationId,
    this.priceMoney,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ModifierLocationOverrides]
  factory ModifierLocationOverrides.fromJson(Map<String, dynamic> json) =>
      _$ModifierLocationOverridesFromJson(json);

  /// Converts a [ModifierLocationOverrides] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ModifierLocationOverridesToJson(this);

  final String? locationId;
  final Money? priceMoney;

  @override
  List<Object?> get props => [locationId, priceMoney];
}
