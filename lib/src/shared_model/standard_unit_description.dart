import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'standard_unit_description.g.dart';

@JsonSerializable()
class StandardUnitDescription extends Equatable {
  const StandardUnitDescription({
    this.unit,
    this.name,
    this.abbreviation,
  });

  /// Converts a [Map] to an [StandardUnitDescription]
  factory StandardUnitDescription.fromJson(Map<String, dynamic> json) =>
      _$StandardUnitDescriptionFromJson(json);

  /// Converts a [StandardUnitDescription] to a [Map]
  Map<String, dynamic> toJson() => _$StandardUnitDescriptionToJson(this);

  final MeasurementUnit? unit;
  final String? name;
  final String? abbreviation;

  @override
  List<Object?> get props => [unit, name, abbreviation];
}
