import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'create_location.g.dart';

/// {@template create_location_response}
/// Response object for create location method.
/// {@endtemplate}
@JsonSerializable()
class CreateLocationResponse extends SquareResponse {
  /// {@macro create_location_response}
  const CreateLocationResponse({
    required this.location,
    super.errors,
  });

  /// Converts a [Map] to an [CreateLocationResponse]
  factory CreateLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLocationResponseFromJson(json);

  /// Converts a [CreateLocationResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLocationResponseToJson(this);

  final Location location;

  @override
  List<Object?> get props => [location, errors];
}

/// {@template create_location_input}
/// Input object for create location method.
/// {@endtemplate}
@JsonSerializable()
class CreateLocationRequest extends Equatable {
  /// {@macro create_location_input}
  const CreateLocationRequest({
    required this.location,
  });

  /// Converts a [Map] to an [CreateLocationRequest]
  factory CreateLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateLocationRequestFromJson(json);

  /// Converts a [CreateLocationRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLocationRequestToJson(this);

  final Location location;

  @override
  List<Object> get props => [location];
}
