import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coordinates.g.dart';

/// {@template coordinates}
/// The physical coordinates (latitude and longitude) of the location.
/// {@endtemplate}
@JsonSerializable()
class Coordinates extends Equatable {
  /// {@macro coordinates}
  const Coordinates({
    required this.latitude,
    required this.longitude,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Coordinates]
  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  /// Converts a [Coordinates] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);

  final double latitude;
  final double longitude;

  @override
  List<Object> get props => [latitude, longitude];
}
