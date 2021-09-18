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
    List<SquareError>? errors,
  }) : super(errors: errors);

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
class CreateLocationInput extends Equatable {
  /// {@macro create_location_input}
  const CreateLocationInput({
    required this.location,
  });

  final Location location;

  /// Converts a [Map] to an [CreateLocationInput]
  factory CreateLocationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateLocationInputFromJson(json);

  /// Converts a [CreateLocationInput] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLocationInputToJson(this);

  @override
  List<Object> get props => [location];
}
