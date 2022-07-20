import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'update_location.g.dart';

/// {@template update_location_response}
/// Response object for update location method.
/// {@endtemplate}
@JsonSerializable()
class UpdateLocationResponse extends SquareResponse {
  /// {@macro update_location_response}
  const UpdateLocationResponse({
    required this.location,
    super.errors,
  });

  /// Converts a [Map] to an [UpdateLocationResponse]
  factory UpdateLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateLocationResponseFromJson(json);

  /// Converts a [UpdateLocationResponse] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateLocationResponseToJson(this);

  final Location location;

  @override
  List<Object?> get props => [location, errors];
}

/// {@template update_location_input}
/// Input object for update location method.
/// {@endtemplate}
@JsonSerializable()
class UpdateLocationRequest extends Equatable {
  /// {@macro update_location_input}
  const UpdateLocationRequest({
    required this.location,
  });

  /// Converts a [Map] to an [UpdateLocationRequest]
  factory UpdateLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLocationRequestFromJson(json);

  /// Converts a [UpdateLocationRequest] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateLocationRequestToJson(this);

  final Location location;

  @override
  List<Object> get props => [location];
}
