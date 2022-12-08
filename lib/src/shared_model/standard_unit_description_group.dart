import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'standard_unit_description_group.g.dart';

@JsonSerializable()
class StandardUnitDescriptionGroup extends Equatable {
  const StandardUnitDescriptionGroup({
    this.standardUnitDescriptions,
    this.languageCode,
  });

  /// Converts a [Map] to an [StandardUnitDescriptionGroup]
  factory StandardUnitDescriptionGroup.fromJson(Map<String, dynamic> json) =>
      _$StandardUnitDescriptionGroupFromJson(json);

  /// Converts a [StandardUnitDescriptionGroup] to a [Map]
  Map<String, dynamic> toJson() => _$StandardUnitDescriptionGroupToJson(this);

  final List<StandardUnitDescription>? standardUnitDescriptions;
  final String? languageCode;

  @override
  List<Object?> get props => [standardUnitDescriptions, languageCode];
}
