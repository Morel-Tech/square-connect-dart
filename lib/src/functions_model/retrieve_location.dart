import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_location.g.dart';

/// {@template retrieve_location_response}
/// Response object for retrieve location method.
/// {@endtemplate}
@JsonSerializable()
class RetrieveLocationResponse extends SquareResponse {
  /// {@macro retrieve_location_response}
  const RetrieveLocationResponse({
    required this.location,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [RetrieveLocationResponse]
  factory RetrieveLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveLocationResponseFromJson(json);

  /// Converts a [RetrieveLocationResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveLocationResponseToJson(this);

  final Location location;

  @override
  List<Object?> get props => [location, errors];
}
