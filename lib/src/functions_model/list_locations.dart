import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_locations.g.dart';

/// {@template list_locations_response}
/// Response to the list locations method.
/// {@endtemplate}
@JsonSerializable()
class ListLocationsResponse extends SquareResponse {
  /// {@macro list_locations_response}
  const ListLocationsResponse({
    required this.locations,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [ListLocationsResponse]
  factory ListLocationsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListLocationsResponseFromJson(json);

  /// Converts a [ListLocationsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListLocationsResponseToJson(this);

  final List<Location> locations;

  @override
  List<Object?> get props => [locations, errors];
}
